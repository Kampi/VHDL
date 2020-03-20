/*
 * Wave.h
 *
 *  Copyright (C) Daniel Kampert, 2018
 *  Website: www.kampis-elektroecke.de
 *  File info: Wave file format definitions.

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

/** @file Wave/Wave.h
 *  @brief Wave file format definitions.
 *
 *  @author Daniel Kampert
 *  @bug No known bugs
 */

#ifndef WAVE_H_
#define WAVE_H_

 /** @brief Wave file header
  *			NOTE: Please check <> if you need additional information.
  */
 typedef struct
 {
	 char chunkID[4];					/**< */
	 uint32_t chunkSize;				/**< */
	 char riffType[4];					/**< */
 } __attribute__((packed)) Wave_Header_t;

#endif /* WAVE_H_ */
