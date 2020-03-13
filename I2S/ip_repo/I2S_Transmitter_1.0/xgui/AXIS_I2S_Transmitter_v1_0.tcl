# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set WIDTH [ipgui::add_param $IPINST -name "WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Data width per channel.} ${WIDTH}
  set MULT [ipgui::add_param $IPINST -name "MULT" -parent ${Page_0}]
  set_property tooltip {Integer multiplier between SCLK and MCLK} ${MULT}
  ipgui::add_param $IPINST -name "FIFO_SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.FIFO_SIZE { PARAM_VALUE.FIFO_SIZE } {
	# Procedure called to update FIFO_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_SIZE { PARAM_VALUE.FIFO_SIZE } {
	# Procedure called to validate FIFO_SIZE
	return true
}

proc update_PARAM_VALUE.MULT { PARAM_VALUE.MULT } {
	# Procedure called to update MULT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MULT { PARAM_VALUE.MULT } {
	# Procedure called to validate MULT
	return true
}

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}


proc update_MODELPARAM_VALUE.FIFO_SIZE { MODELPARAM_VALUE.FIFO_SIZE PARAM_VALUE.FIFO_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_SIZE}] ${MODELPARAM_VALUE.FIFO_SIZE}
}

proc update_MODELPARAM_VALUE.MULT { MODELPARAM_VALUE.MULT PARAM_VALUE.MULT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MULT}] ${MODELPARAM_VALUE.MULT}
}

proc update_MODELPARAM_VALUE.WIDTH { MODELPARAM_VALUE.WIDTH PARAM_VALUE.WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH}] ${MODELPARAM_VALUE.WIDTH}
}

