v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 42200 45000 1 0 0 vdc-1.sym
{
T 42900 45650 5 10 1 1 0 0 1
refdes=V1
T 42900 45850 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 42900 46050 5 10 0 0 0 0 1
footprint=none
T 42900 45450 5 10 1 1 0 0 1
value=DC 3V
}
C 45500 44200 1 0 0 spice-npn-1.sym
{
T 46400 44900 5 10 0 0 0 0 1
device=SPICE-NPN
T 46400 44700 5 10 1 1 0 0 1
refdes=Q1
T 45500 44200 5 10 1 1 0 0 1
model-name=BC848C
}
C 46000 46100 1 270 0 led-2.sym
{
T 46300 45300 5 10 1 1 270 0 1
refdes=D1
T 46600 46000 5 10 0 0 270 0 1
device=LED
T 46000 46100 5 10 1 1 0 0 1
model-name=osram_LGT67K
}
C 46000 42900 1 0 0 gnd-1.sym
C 42400 42900 1 0 0 gnd-1.sym
C 44300 44600 1 0 0 resistor-2.sym
{
T 44700 44950 5 10 0 0 0 0 1
device=RESISTOR
T 44500 44900 5 10 1 1 0 0 1
refdes=R1
T 44300 44600 5 10 1 1 0 0 1
value=10kR
}
C 46000 47000 1 270 0 resistor-2.sym
{
T 46350 46600 5 10 0 0 270 0 1
device=RESISTOR
T 46300 46800 5 10 1 1 270 0 1
refdes=R2
T 46000 47000 5 10 1 1 0 0 1
value=620R
}
N 42500 45000 42500 43200 4
N 42500 46200 42500 47000 4
N 42500 47000 46100 47000 4
N 44000 44700 44300 44700 4
N 45200 44700 45500 44700 4
N 46100 44200 46100 43200 4
C 48000 47000 1 0 0 spice-model-1.sym
{
T 48100 47700 5 10 0 1 0 0 1
device=model
T 48100 47600 5 10 1 1 0 0 1
refdes=A1
T 49300 47300 5 10 1 1 0 0 1
model-name=osram_LGT67K
T 48500 47100 5 10 1 1 0 0 1
file=osram_LGT67K.lib
}
C 48000 46000 1 0 0 spice-model-1.sym
{
T 48100 46700 5 10 0 1 0 0 1
device=model
T 48100 46600 5 10 1 1 0 0 1
refdes=A2
T 49300 46300 5 10 1 1 0 0 1
model-name=QBC848C
T 48500 46100 5 10 1 1 0 0 1
file=ebipolar.lib
}
N 44000 44700 44000 47000 4
