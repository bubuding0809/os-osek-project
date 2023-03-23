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
extern void long_operation(int led_buf);
extern void serial_print(char const *msg);
extern float getLux(int dataRaw);

/* TASKs Declarations */
DeclareTask(DetectTask);
DeclareTask(DisplayTask);
DeclareTask(ToggleEastServoTask);
DeclareTask(ToggleWestServoTask);
DeclareTask(ToggleServoTask);
DeclareTask(ClockTask);

/* My event Declaration */

/* My Variables */
// User configuration for Light Intensity
#define NIGHT_THRESHOLD (200) // Lux - 200

#define MAX_ADC_READING (1023)       /* Max ADC level for Arduino 10-bit ADC */
#define ADC_REF_VOLTAGE (5.0)        /* Max Analog Voltage used in Arduino */
#define REF_RESISTANCE (5000)        /* 5KOhm Resistor used in circuit */
#define LUX_CALC_SCALAR (889985.88)  /* Lux Scalar */
#define LUX_CALC_EXPONENT (-1.16552) /* Lux Exponent */

// defines variables
ServoTimer2 eastServo;
ServoTimer2 westServo;
LiquidCrystal lcd(RS, EN, D4, D5, D6,
                  D7); // LCD - Construct lcd object, pins see hw_pins.h

int dataRawEast[3] = {-2000, -2000, -2000};
int dataRawWest[3] = {-2000,-2000,-2000};
float dataLuxEast[3] = {0,0, 0};
float dataLuxWest[3] = {0,0, 0};
float avgEast = 0;
float avgWest = 0;
bool eastContracted = false;
bool westContracted = false;
int countEast = 0, countWest =0;

// 24Hr clock
int hour = 6;
int minute = 29;
int second = 55;
bool isNewTime = false;

TASK(ClockTask) {
  second++;
  if (second == 60) {
    second = 0;
    minute++;
    if (minute == 60) {
      minute = 0;
      hour++;
      if (hour == 24) {
        hour = 0;
      }
    }
  }
  isNewTime = true;
}

/*************************************************************
 *  \Function	DetectTask
 *  \brief		This task starts at MM ms and repeat at NN ms.
 *  			It contains 2 operations, namely,
 *  			shade operation and street light operation.
 *
 *  			For shade operation, it collects raw data from sensory
 *circuit,
*              After getting the data, it converts raw data to LUX data.
*              The LUX data is used to decide to contract or expand
*              shade controller (servo-motor).
*
*              For clock operation, it operates as 24Hr clock operation.
*              It uses clock time to decide to switch on/off
*              the street light.
*
*************************************************************/
TASK(DetectTask) {
  //	EventMaskType mask;

  float resistorVoltage;
  float ldrVoltage;
  float ldrResistance;


  // read in LDR voltage from analog pins for East and West
  // Convert raw data to lux
  if (countEast<=3) {
	  Serial.print("East RAW data:");
	  Serial.println(dataRawEast[countEast]);
	  dataRawEast[countEast] = analogRead(EASTDETECT); // East analog
	  dataLuxEast[countEast] = getLux(dataRawEast[countEast]); // East digital
	  Serial.print("East data:");
	  Serial.println(dataLuxEast[countEast]);
	  countEast++;
  }
  // Convert raw data to lux
  if (countWest <= 3) {
	  Serial.print("West RAW data:");
	  Serial.println(dataRawWest[countWest]);
	  dataRawWest[countWest] = analogRead(WESTDETECT); // West analog

	  dataLuxWest[countWest] = getLux(dataRawWest[countWest]); // West digital
	  Serial.print("West data:");
	  Serial.println(dataLuxWest[countWest]);
	  countWest++;
  }


  avgEast = (dataLuxEast[0]+dataLuxEast[1]+dataLuxEast[2])/3;
  Serial.print("Avg east lux: ");
  Serial.println(avgEast);
  avgWest = (dataLuxWest[0]+dataLuxWest[1]+dataLuxWest[2])/3;
  Serial.print("Avg west lux: ");
  Serial.println(avgWest);

  if (countEast == 3){
	  countEast = 0;
  }

  if (countWest == 3){
 	  countWest = 0;
   }

  // Street light operation based on clock time during the night
  if ((hour >= 18 && minute >= 30) || (hour <= 6 && minute < 30)) {
    if (!digitalRead(EASTLIGHT)) {
      digitalWrite(EASTLIGHT, HIGH);
    }

    if (!digitalRead(WESTLIGHT)) {
      digitalWrite(WESTLIGHT, HIGH);
    }

  } else if (hour >= 6 && minute >= 30) {
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

  // Shade operation
  if (avgEast < 500 && !eastContracted) {
//    ActivateTask(ToggleEastServoTask);
	  SetEvent(ToggleServoTask, EastServoEvent);
  } else if (avgEast >= 500 && eastContracted) {
//	  ActivateTask(ToggleEastServoTask);
	  SetEvent(ToggleServoTask, EastServoEvent);
  }

  if (avgWest < 500 && !westContracted) {
//    ActivateTask(ToggleWestServoTask);
	  SetEvent(ToggleServoTask, WestServoEvent);
  } else if (avgWest >= 500 && westContracted) {
//    ActivateTask(ToggleWestServoTask);
	  SetEvent(ToggleServoTask, WestServoEvent);
  }

  TerminateTask();
}

TASK(ToggleEastServoTask) {
  if (eastContracted) {
    Serial.println("Opening East blinds");

    // SERVO GOES between here
    eastServo.write(EASTSERVO_180);
    // SERVO GOES between here

    Serial.println("Opened East blinds");
    eastContracted = !eastContracted;
  } else {
    Serial.println("Contracting East blinds");

    // SERVO GOES between here
    eastServo.write(EASTSERVO_0);
    // SERVO GOES between here

    Serial.println("Contracted East blinds");
    eastContracted = !eastContracted;
  }
}

TASK(ToggleWestServoTask) {
  if (westContracted) {
    Serial.println("Opening West blinds");

    // SERVO GOES between here
    westServo.write(WESTSERVO_180);
    // SERVO GOES between here

    Serial.println("Opened West blinds");
    westContracted = !westContracted;
  } else {
    Serial.println("Contracting West blinds");

    // SERVO GOES between here
    westServo.write(WESTSERVO_0);
    // SERVO GOES between here

    Serial.println("Contracted East blinds");
    westContracted = !westContracted;
  }
}

TASK(ToggleServoTask) {
  EventMaskType mask;

  while (true) {
    WaitEvent(EastServoEvent | WestServoEvent);
    GetEvent(ToggleServoTask, &mask);

    if (mask & EastServoEvent) {
      if (eastContracted) {
        Serial.println("Opening East blinds");

        // SERVO GOES between here
        eastServo.write(EASTSERVO_180);
        // SERVO GOES between here

        Serial.println("Opened East blinds");
        eastContracted = !eastContracted;
      } else {
        Serial.println("Contracting East blinds");

        // SERVO GOES between here
        eastServo.write(EASTSERVO_0);
        // SERVO GOES between here

        Serial.println("Contracted East blinds");
        eastContracted = !eastContracted;
      }

      // Make sure to clear the event bit to prevent infinite loop
      ClearEvent(EastServoEvent);
    }
    if (mask & WestServoEvent) {
      if (westContracted) {
        Serial.println("Opening West blinds");

        // SERVO GOES between here
        westServo.write(WESTSERVO_180);
        // SERVO GOES between here

        Serial.println("Opened West blinds");
        westContracted = !westContracted;
      } else {
        Serial.println("Contracting West blinds");

        // SERVO GOES between here
        westServo.write(WESTSERVO_0);
        // SERVO GOES between here

        Serial.println("Contracted East blinds");
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
 *  \brief		This task starts at MM ms and repeat at NN ms.
 *  			It contains 1 operations, it reads the Lux data,
 *  			shade on/off data, street light on/off data and
 *  			clock data.
 *  			Then it displays the respective data on the LCD panel.
 *
 *************************************************************/
TASK(DisplayTask) {
  //	EventMaskType mask;

  char msg[20];

  // 1. Paint lux data of East, West and average to LCD row 1
  lcd.setCursor(0, 0);
  float averageLux = (avgEast + avgWest) / 2;
  sprintf(msg, "LUX : %3dW %3dA %3dE", (int)avgWest, (int)averageLux,
          (int)avgEast);
  lcd.print(msg);

  // 2. Paint shade on/off data of East, West to LCD row 2
  lcd.setCursor(0, 1);
  sprintf(msg, "SHADE : E-%s W-%s", eastContracted ? "ON " : "OFF",
          westContracted ? "ON " : "OFF");
  lcd.print(msg);

  // 3. Paint street light on/off data of East, West to LCD row 3
  lcd.setCursor(0, 2);
  sprintf(msg, "LIGHT : E-%s W-%s", digitalRead(EASTLIGHT) ? "ON " : "OFF",
          digitalRead(WESTLIGHT) ? "ON " : "OFF");
  lcd.print(msg);

  if (isNewTime) {
    lcd.setCursor(0, 3);
    sprintf(msg, "CLOCK : %02d:%02d:%02d%", hour, minute, second);
    lcd.print(msg);
  }
  TerminateTask();
}

/* Test function for leds*/
void long_operation(int led_buf) {
  //  digitalWrite(led_buf, HIGH);
  delay(500);
  digitalWrite(led_buf, LOW);
  delay(500);
}

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
} /* extern "C" */
}
