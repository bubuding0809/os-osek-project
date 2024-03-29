/* ###*B*###
 * Erika Enterprise, version 3
 *
 * Copyright (C) 2017 - 2019 Evidence s.r.l.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License, version 2, for more details.
 *
 * You should have received a copy of the GNU General Public License,
 * version 2, along with this program; if not, see
 * <www.gnu.org/licenses/old-licenses/gpl-2.0.html >.
 *
 * This program is distributed to you subject to the following
 * clarifications and special exceptions to the GNU General Public
 * License, version 2.
 *
 * THIRD PARTIES' MATERIALS
 *
 * Certain materials included in this library are provided by third
 * parties under licenses other than the GNU General Public License. You
 * may only use, copy, link to, modify and redistribute this library
 * following the terms of license indicated below for third parties'
 * materials.
 *
 * In case you make modified versions of this library which still include
 * said third parties' materials, you are obligated to grant this special
 * exception.
 *
 * The complete list of Third party materials allowed with ERIKA
 * Enterprise version 3, together with the terms and conditions of each
 * license, is present in the file THIRDPARTY.TXT in the root of the
 * project.
 * ###*E*### */

/** \file	task.cpp
 *  \brief	User Tasks
 *
 *  This file contains the code of application task for Erika Enterprise.
 *
 *  \author
 *  \date
 */

/* ERIKA Enterprise. */
#include "ee.h"

/* Arduino SDK. */
#include "Arduino.h"

/* Hardware Pins */
#include "hwpins.h"

/* Hardware libraries*/
#include "LiquidCrystal.h"
#include "ServoTimer2.h"
#include "lcd.h"

extern "C" {

/* External Functions */
extern void serial_print(char const *msg);
extern void populateMovingAverage(int *maIndex, float *maLux, int LDR_PIN);
extern float getLux(int dataRaw);
extern float getAverage(float *data, int size);

/* TASKs Declarations */
DeclareTask(DetectTask);
DeclareTask(DisplayTask);
DeclareTask(ToggleServoTask);
DeclareTask(ClockTask);

/* My event Declaration */
DeclareEvent(EastServoEvent);
DeclareEvent(WestServoEvent);

/* My Variables */
// User configuration for Light Intensity
#define NIGHT_THRESHOLD (200) // Lux - 200

#define MAX_ADC_READING (1023)       /* Max ADC level for Arduino 10-bit ADC */
#define ADC_REF_VOLTAGE (5.0)        /* Max Analog Voltage used in Arduino */
#define REF_RESISTANCE (5000)        /* 5KOhm Resistor used in circuit */
#define LUX_CALC_SCALAR (889985.88)  /* Lux Scalar */
#define LUX_CALC_EXPONENT (-1.16552) /* Lux Exponent */
#define MOVING_AVERAGE_SIZE (3)      /* Moving Average Size */

// defines variables
ServoTimer2 eastServo;
ServoTimer2 westServo;
LiquidCrystal lcd(RS, EN, D4, D5, D6,
                  D7); // LCD - Construct lcd object, pins see hw_pins.h

// Initialize moving average array for east and west
float dataLuxEast[3] = {0, 0, 0};
float dataLuxWest[3] = {0, 0, 0};

// Initialize the moving average value for east and west
float avgEast = 0;
float avgWest = 0;

// Initialize the east and west servo states
bool eastContracted = false;
bool westContracted = false;

// Initialize the index for moving average
int countEast = 0, countWest = 0;

// 24Hr clock
int hours = 07;
int minutes = 20;
int seconds = 55;
bool isNewTime = false;

/*************************************************************
 *  \Function	ClockTask
 *  \brief
 *  Clock task to keep track of time
 *  \details
 *  This task is used to keep track of time and update the
 *  global variables for hours, minutes and seconds.
 *  It also sets the isNewTime flag to true when the time
 *  changes.
 *  \note
 * This task is activated every 1 second.
 *
 *************************************************************/
TASK(ClockTask) {
  seconds++;
  if (seconds == 60) {
    seconds = 0;
    minutes++;
    if (minutes == 60) {
      minutes = 0;
      hours++;
      if (hours == 24) {
        hours = 0;
      }
    }
  }
  isNewTime = true;
}

/*************************************************************
 *  \Function	DetectTask
 *  \brief
 *  Detect task to detect LDR sensor data to control street light and servo
 *  \details
 *  Detect task to detect LDR sensor data to populate a moving average array.
 *  Using the moving average array, it calculates a 3 seconds moving average lux
 *value. This task also controls the street light operation based on the lux
 *value. this task also controls the servo operation based on the lux value.
 *  \note
 *  This task is activated every 1 second.
 *************************************************************/
TASK(DetectTask) {
  // Populate the moving average array and get the average for east
  populateMovingAverage(&countEast, dataLuxEast, EASTDETECT);
  avgEast = getAverage(dataLuxEast, MOVING_AVERAGE_SIZE);
  Serial.print("Avg east lux: " + String(avgEast));

  // Populate the moving average array and get the average for west
  populateMovingAverage(&countWest, dataLuxWest, WESTDETECT);
  avgWest = getAverage(dataLuxWest, MOVING_AVERAGE_SIZE);
  Serial.print("Avg west lux: " + String(avgWest));

  // Street light operation based on clock time during the night
  if ((hours >= 18 && minutes >= 30) || (hours <= 7 && minutes < 30)) {
    digitalWrite(EASTLIGHT, HIGH);
    digitalWrite(WESTLIGHT, HIGH);
  } else if (hours >= 7 && minutes >= 30) {
    // Normal street light operation based on LUX data
    if (avgEast <= 200) { // East
      digitalWrite(EASTLIGHT, HIGH);
    } else {
      digitalWrite(EASTLIGHT, LOW);
    }
    // West
    if (avgWest <= 200) { // West
      digitalWrite(WESTLIGHT, HIGH);
    } else {
      digitalWrite(WESTLIGHT, LOW);
    }
  }

  // Shade operation based on LUX data
  if (avgEast < 500 && !eastContracted) {
    // Set toggle event to contract the east shade when lux value is below 500
    SetEvent(ToggleServoTask, EastServoEvent);
  } else if (avgEast >= 500 && eastContracted) {
    // Set toggle event to expand the east shade when lux value is above 500
    SetEvent(ToggleServoTask, EastServoEvent);
  }

  if (avgWest < 500 && !westContracted) {
    // Set toggle event to contract the west shade when lux value is below 500
    SetEvent(ToggleServoTask, WestServoEvent);
  } else if (avgWest >= 500 && westContracted) {
    // Set toggle event to expand the west shade when lux value is above 500
    SetEvent(ToggleServoTask, WestServoEvent);
  }

  TerminateTask();
}

/*************************************************************
 *  \Function	ToggleServoTask
 *  \brief
 *  Toggle servo task to toggle the servo motor
 *  \details
 *  This task waits for the event to be set and then toggles the servo motor
 *  Depending on the event it will either expand or contract the shade at east
 *or west side \note This task is activated via eventing management
 *************************************************************/
TASK(ToggleServoTask) {
  EventMaskType mask;

  while (true) {
    // Wait for event to be set
    WaitEvent(EastServoEvent | WestServoEvent);
    // Get the event mask of the event that was set
    GetEvent(ToggleServoTask, &mask);

    // Toggle the east shade if the event is set
    if (mask & EastServoEvent) {
      // Expand or contract based on the the east motor based on the contracted
      // state
      if (eastContracted) {
        // Expand the east shade
        eastServo.write(EASTSERVO_180);
        eastContracted = !eastContracted;
      } else {
        // Contract the east shade
        eastServo.write(EASTSERVO_0);
        eastContracted = !eastContracted;
      }

      // Make sure to clear the event bit to prevent infinite loop
      ClearEvent(EastServoEvent);
    }

    // Toggle the west shade if the event is set
    if (mask & WestServoEvent) {
      // Expand or contract based on the the west motor based on the contracted
      // state
      if (westContracted) {
        // Expand the west shade
        westServo.write(WESTSERVO_180);
        westContracted = !westContracted;
      } else {
        // Contract the west shade
        westServo.write(WESTSERVO_0);
        westContracted = !westContracted;
      }

      // Make sure to clear the event bit to prevent infinite loop
      ClearEvent(WestServoEvent);
    }
  }

  TerminateTask();
}

/*************************************************************
 *  \Function	DisplayTask
 *  \brief
 *  Display task to display the data on the LCD
 *  \details
 *  This task displays the lux data of east, west and average on row 1
 *  This task displays the shade on/off data of east, west on row 2
 *  This task displays the street light on/off data of east, west on row 3
 *  This task displays the clock time on row 4
 *  \note
 *  This task is activated every 1 second.
 *
 *************************************************************/
TASK(DisplayTask) {
  char msg[20];

  // 1. Paint lux data of East, West and average to LCD row 1
  lcd.setCursor(0, 0);
  float averageLux = (avgEast + avgWest) / 2;
  sprintf(msg, "LUX : %3dW %3dA %3dE", (int)avgWest, (int)averageLux,
          (int)avgEast);
  lcd.print(msg);

  // 2. Paint shade on/off data of East, West to LCD row 2
  lcd.setCursor(0, 1);
  sprintf(msg, "SHADE : W-%s E-%s", westContracted ? "OFF" : "ON ",
          eastContracted ? "OFF" : "ON ");
  lcd.print(msg);

  // 3. Paint street light on/off data of East, West to LCD row 3
  lcd.setCursor(0, 2);
  sprintf(msg, "LIGHT : W-%s E-%s", digitalRead(WESTLIGHT) ? "ON " : "OFF",
          digitalRead(EASTLIGHT) ? "ON " : "OFF");
  lcd.print(msg);

  // 4. Paint clock data to LCD row 4
  if (isNewTime) {
    lcd.setCursor(0, 3);
    sprintf(msg, "CLOCK : %02d:%02d:%02d%", hours, minutes, seconds);
    lcd.print(msg);
  }

  TerminateTask();
}

/* ************************************************************** */
/* Helper functions that is called by different tasks*/

// Function to convert raw data to LUX data
float getLux(int dataRaw) {
  float resistorVoltage;
  float ldrVoltage;
  float ldrResistance;

  // Convert raw data to LUX data
  resistorVoltage = (float)dataRaw / MAX_ADC_READING * ADC_REF_VOLTAGE;
  ldrVoltage = ADC_REF_VOLTAGE - resistorVoltage;
  ldrResistance =
      ldrVoltage / resistorVoltage * REF_RESISTANCE; // REF_RESISTANCE is 5 kohm
  return LUX_CALC_SCALAR * pow(ldrResistance, LUX_CALC_EXPONENT);
}

// Function to get average of the moving average array
float getAverage(float *data, int size) {
  float sum = 0;
  for (int i = 0; i < size; i++) {
    sum += data[i];
  }
  return sum / size;
}

// Function to populate the moving average array
void populateMovingAverage(int *maIndex, float *maLux, int LDR_PIN) {
  if (*maIndex < MOVING_AVERAGE_SIZE) {
    // populate moving average
    maRaw[*maIndex] = analogRead(LDR_PIN);
    maLux[*maIndex] = getLux(maRaw[*maIndex]);
    (*maIndex)++;
  } else {
    // Reset index
    *maIndex = 0;
  }
}
}
