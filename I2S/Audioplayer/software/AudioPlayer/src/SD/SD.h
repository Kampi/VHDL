/*
 * SD.h
 *
 *  Copyright (C) Daniel Kampert, 2018
 *  Website: www.kampis-elektroecke.de
 *  File info: SD card driver for the I2S audio project.

  GNU GENERAL PUBLIC LICENSE:
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program. If not, see <http://www.gnu.org/licenses/>.

  Errors and commissions should be reported to DanielKampert@kampis-elektroecke.de
 */

/** @file SD/SD.h
 *  @brief SD card driver for the I2S audio project.
 *
 *  @author Daniel Kampert
 *  @bug No known bugs
 */

#ifndef SD_H_
#define SD_H_

 #include "ff.h"
 #include "xsdps.h"
 #include "TestSignals/TestSignals.h"
 #include "Wave/Wave.h"

 u32 SD_OpenCard(void);
 u32 SD_ScanFiles(char* path);
 u32 SD_LoadFileFromCard(const char* FileName);
 u32 SD_CopyDataIntoBuffer(u16* Buffer, const u32 Length);

#endif /* SD_H_ */
