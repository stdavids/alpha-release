
SRAMS=$(shell find cfgs/ -name *.cfg)

all: $(foreach s,$(SRAMS),gen.$(notdir $(basename $s)))
	@# Done!

gen.%::
	python2 ~/cacti-mc/cacti-mc-v3/cacti-mc cfgs/$*.cfg
	#python2 ~/cacti-mc/cacti-mc/cacti-mc cfgs/$*.cfg

