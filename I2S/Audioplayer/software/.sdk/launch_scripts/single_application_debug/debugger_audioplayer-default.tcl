connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279572651A" && level==0} -index 1
fpga -file G:/Dropbox/Git/VHDL/I2S/Audioplayer/software/AudioPlayer/_ide/bitstream/System_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw G:/Dropbox/Git/VHDL/I2S/Audioplayer/software/System_wrapper/export/System_wrapper/hw/System_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source G:/Dropbox/Git/VHDL/I2S/Audioplayer/software/AudioPlayer/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow G:/Dropbox/Git/VHDL/I2S/Audioplayer/software/AudioPlayer/Debug/AudioPlayer.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con