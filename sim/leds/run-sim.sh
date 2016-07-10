#!/bin/sh


gnetlist -o osram_LGT67K_sim_diode_only.cir -g spice-sdb osram_LGT67K_sim_diode_only.sch
gnetlist -o osram_LGT67K_sim_led_only.cir -g spice-sdb osram_LGT67K_sim_led_only.sch
gnetlist -o osram_LGT67K_sim.cir -g spice-sdb osram_LGT67K_sim.sch


ngspice -b osram_LGT67K_sim_diode_only.ngspice.ckt -r osram_LGT67K_sim_diode_only.ngspice.raw>osram_LGT67K_sim_diode_only.ngspice.out
ngspice -b osram_LGT67K_sim_led_only.ngspice.ckt -r osram_LGT67K_sim_led_only.ngspice.raw>osram_LGT67K_sim_led_only.ngspice.out
ngspice -b osram_LGT67K_sim.ngspice.ckt -r osram_LGT67K_sim.ngspice.raw>osram_LGT67K_sim.ngspice.out

