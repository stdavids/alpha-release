export DESIGN_NAME = bp_fe_top
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/$(DESIGN_NAME)/design.v
export SDC_FILE      = ./designs/src/$(DESIGN_NAME)/design.sdc

export MERGED_LEF = ./scott.lef
export LIB_FILES  = ./platforms/nangate45/NangateOpenCellLibrary_typical.lib
export GDS_FILES  = $(wildcard ./platforms/nangate45/gds/*)

export DIE_AREA    = 0.0  0.0  1000.0 1000.0
export CORE_AREA   = 25.0 25.0 975.0 975.0
export CORE_WIDTH  = 950.0
export CORE_HEIGHT = 950.0

export RUN_MACRO_PLACEMENT = 1

export CLOCK_PERIOD = 10.000
export CLOCK_PORT   = clk_i

export LIB_FILES += ./srams/nangate45_120x64_1P_bit/nangate45_120x64_1P_bit.lib
export LIB_FILES += ./srams/nangate45_64x512_1P_BM/nangate45_64x512_1P_BM.lib
export LIB_FILES += ./srams/nangate45_8x64_1P_bit/nangate45_8x64_1P_bit.lib
