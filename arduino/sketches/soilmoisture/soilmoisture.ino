/*
 * soilmoisture
 *
 * Copyright (c) 2011 Daniel Berenguer <dberenguer@usapiens.com>
 * 
 * This file is part of the panStamp project.
 * 
 * panStamp  is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * any later version.
 * 
 * panStamp is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with panStamp; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301
 * USA
 * 
 * Author: Daniel Berenguer
 * Creation date: 04/29/2013
 *
 * Device:
 * Soil Moisture sensor
 *
 * Description:
 * This application measures soil moisture from any two sensor providing an
 * analog signal
 *
 * These devices are low-power enabled so they will enter low-power mode
 * just after reading the sensor values and transmitting them over the
 * SWAP network.
 *
 * Associated Device Definition File, defining registers, endpoints and
 * configuration parameters:
 * soilmoisture.xml
 */
 
#include "regtable.h"
#include "panstamp.h"

/**
 * Uncomment if you are reading Vcc from A7. All battery-boards do this
 */
#define VOLT_SUPPLY_A7

/**
 * LED pin
 */
#define LEDPIN        4

/**
 * Sensor pins
 */
#define SENSOR_0_PIN  3     // Analog pin - sensor 0
#define POWER_0_PIN   16    // Digital pin used to powwer sensor 0
#define SENSOR_1_PIN  5     // Analog pin - sensor 1
#define POWER_1_PIN   18    // Digital pin used to powwer sensor 1

/**
 * setup
 *
 * Arduino setup function
 */
void setup()
{
  int i;

  pinMode(LEDPIN, OUTPUT);
  digitalWrite(LEDPIN, LOW);

  // Initialize power pins
  pinMode(POWER_0_PIN, OUTPUT);
  digitalWrite(POWER_0_PIN, LOW);
  pinMode(POWER_1_PIN, OUTPUT);
  digitalWrite(POWER_1_PIN, LOW);

  // Init panStamp
  panstamp.init();

  // Transmit product code
  getRegister(REGI_PRODUCTCODE)->getData();

  // Enter SYNC state
  panstamp.enterSystemState(SYSTATE_SYNC);

  // During 3 seconds, listen the network for possible commands whilst the LED blinks
  for(i=0 ; i<6 ; i++)
  {
    digitalWrite(LEDPIN, HIGH);
    delay(100);
    digitalWrite(LEDPIN, LOW);
    delay(400);
  }

  // Transmit periodic Tx interval
  getRegister(REGI_TXINTERVAL)->getData();
  // Transmit power voltage
  getRegister(REGI_VOLTSUPPLY)->getData();
   // Switch to Rx OFF state
  panstamp.enterSystemState(SYSTATE_RXOFF);
}

/**
 * loop
 *
 * Arduino main loop
 */
void loop()
{
  // Transmit sensor data
  getRegister(REGI_SENSOR)->getData();
  // Transmit power voltage
  getRegister(REGI_VOLTSUPPLY)->getData();

  // Sleep
  panstamp.goToSleep();
}

