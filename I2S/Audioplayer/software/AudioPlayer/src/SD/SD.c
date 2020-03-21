/*
 * SD.c
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

/** @file SD/SD.c
 *  @brief SD card driver for the I2S audio project.
 *
 *  @author Daniel Kampert
 */

#include "SD.h"
#include <stdio.h>

static FATFS _FileSystem;
static FIL _FileHandle;
static UINT _BytesRead;

static Wave_RIFF_t _Header;
static Wave_Format_t _Format;
static Wave_Header_t _DataHeader;

static u32 _RemainingBytes;
static u32 _DataBytes;

u32 SD_OpenCard(void)
{
	if(f_mount(&_FileSystem, "", 1) != FR_OK)
	{
		xil_printf("[ERROR] Can not open SD card!\n\r");
		return XST_FAILURE;
	}
}

u32 SD_ScanFiles(char* path)
{
    DIR dir;
    static FILINFO fno;

    if(f_opendir(&dir, path) == FR_OK)
    {
        while(1)
        {
            if((f_readdir(&dir, &fno) != FR_OK) || (!fno.fname[0]))
            {
            	break;
            }

            if(fno.fattrib & AM_DIR)
            {
            	UINT i = strlen(path);
                sprintf(&path[i], "/%s", fno.fname);
                if(SD_ScanFiles(path) != FR_OK)
                {
                	break;
                }

                path[i] = 0;
            }
            else
            {
            	xil_printf("%s/%s\n\r", path, fno.fname);
            }
        }

        f_closedir(&dir);
	}

	return XST_SUCCESS;
}

u32 SD_LoadFileFromCard(const char* FileName)
{
	xil_printf("[INFO] Opening file: %s...\n\r", FileName);

	if(f_open(&_FileHandle, FileName, FA_READ))
	{
		xil_printf("[ERROR] Can not open audio file!\n\r");
		return XST_FAILURE;
	}

	if(f_read(&_FileHandle, &_Header, sizeof(Wave_RIFF_t), &_BytesRead) || f_read(&_FileHandle, &_Format, sizeof(Wave_Format_t), &_BytesRead) || f_read(&_FileHandle, &_DataHeader, sizeof(Wave_Header_t), &_BytesRead))
	{
		xil_printf("[ERROR] Can not read SD card!\n\r");
		return XST_FAILURE;
	}

	if(f_lseek(&_FileHandle, WAVE_DATA_OFFSET))
	{
		xil_printf("[ERROR] Can not place SD card pointer!\n\r");
		return XST_FAILURE;
	}

	if(!(_Format.AudioFormat == WAVE_FORMAT_PCM))
	{
		xil_printf("[ERROR] Audio format not supported! Keep sure that the file use the PCM format!\n\r");
		return XST_FAILURE;
	}

	_DataBytes = _DataHeader.ChunkSize / _Format.NumChannels;
	xil_printf("	File size: %lu bytes\n\r", _Header.Header.ChunkSize + 8);
	xil_printf("	File format: %lu\n\r", _Format.AudioFormat);
	xil_printf("	Channels: %lu\n\r", _Format.NumChannels);
	xil_printf("	Sample rate: %lu kHz\n\r", _Format.SampleRate);
	xil_printf("	Bits per sample: %lu bits\n\r", _Format.BitsPerSample);
	xil_printf("	Data bytes: %lu bytes\n\r", _DataBytes);
	xil_printf("	Samples: %lu\n\r", 8 * _DataBytes / _Format.BitsPerSample);

	_RemainingBytes = _DataBytes;

	return XST_SUCCESS;
}

u32 SD_CopyDataIntoBuffer(u16* Buffer, const u32 Length)
{
	if(_RemainingBytes >= Length)
	{
		if(f_read(&_FileHandle, Buffer, Length, &_BytesRead))
		{
			return XST_FAILURE;
		}

		_RemainingBytes -= _BytesRead;
	}
	else
	{
		// Read the remaining data bytes and reset the file pointer
		if(f_read(&_FileHandle, Buffer, _RemainingBytes, &_BytesRead) || f_lseek(&_FileHandle, WAVE_DATA_OFFSET))
		{
			return XST_FAILURE;
		}

		if(f_read(&_FileHandle, &Buffer[_RemainingBytes >> 0x01], Length - _RemainingBytes, &_BytesRead))
		{
			return XST_FAILURE;
		}

		_RemainingBytes = _DataBytes - _BytesRead;
	}

	return XST_SUCCESS;
}
