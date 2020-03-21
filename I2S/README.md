# I2S

## Table of Contents

- [I2S](#i2s)
  - [Table of Contents](#table-of-contents)
  - [About](#about)
  - [Content](#content)
  - [Maintainer](#maintainer)

## About

A complete project to realize an I2S transmitter in VHDL for a ZYNQ 7000 SoC based on [my tutorial](https://www.kampis-elektroecke.de/fpga/i2s/).

Please check write an e-mail to [DanielKampert@kampis-elektroecke.de](DanielKampert@kampis-elektroecke.de) or check my [website](https://www.kampis-elektroecke.de/) if you have any questions.

## Content

- **I2S_Transmitter** -  The source code for the [I2S transmitter project](https://www.kampis-elektroecke.de/fpga/i2s/design-des-i2s-sender/). The transmitter reads out a ROM with a preloaded sine wave and use a [CS4344 D/A converter](https://statics.cirrus.com/pubs/proDatasheet/CS4344-45-48_F2.pdf) to output a constant tone.
- **ip_repo** - The IP repository for the AXI-Stream I2S transmitter from the [second](https://www.kampis-elektroecke.de/fpga/i2s/axi-stream-inter…-fuer-den-sender/) tutorial part.
- **Audioplayer** - Yes, that´s what you think. Use the AXI-Stream I2S transmitter to create a simple audio player for your ZYNQ. Complete project from the [third](https://www.kampis-elektroecke.de/fpga/i2s/abspielen-von-wave-dateien/) tutorial part.
- **Samples** - Some audio samples as wave files and a excel sheet to calculate the values for a sine wave C array.

## Maintainer

- [Daniel Kampert](mailto:DanielKampert@kampis-elektroecke.de)
