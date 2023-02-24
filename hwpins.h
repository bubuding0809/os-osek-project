/*  \file	hwpins.h
 *  \brief	This is the header to define the pins and macros.
 *
 *  Created on: 2 July 2021
 *      Author:
 */

#ifndef HWPINS_H_
#define HWPINS_H_

// Servo Motor Pins
#define EASTSERVO (5)
#define EASTSERVO_0 (750)    /* Set to Angle 0 Degree   */
#define EASTSERVO_90 (1500)  /* Set to Angle 90 Degree  */
#define EASTSERVO_180 (2250) /* Set to Angle 180 Degree */

#define WESTSERVO (4)
#define WESTSERVO_0 (750)    /* Set to Angle 0 Degree   */
#define WESTSERVO_90 (1500)  /* Set to Angle 90 Degree  */
#define WESTSERVO_180 (2250) /* Set to Angle 180 Degree */

// LUX and LED
#define EASTDETECT (A5)
#define EASTLIGHT (3)
#define WESTDETECT (A4)
#define WESTLIGHT (7)

// LCD Pins
#define RS (8)  /* LCD RS Pin */
#define EN (9)  /* LCD EN Pin */
#define D4 (10) /* LCD D4 Pin */
#define D5 (11) /* LCD D5 Pin */
#define D6 (12) /* LCD D6 Pin */
#define D7 (13) /* LCD D7 Pin */

#endif /* HWPINS_H_ */
