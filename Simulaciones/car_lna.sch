<QucsStudio Schematic 5.8>
<Properties>
View=-73.2789,-114.071,1138.16,799.001,0.857142,15,0
Grid=10,10,1
DataSet=*.dat
DataDisplay=*.dpl
OpenDisplay=1
showFrame=0
FrameText0=Title \n @PATH@@FILE@
FrameText1=Drawn By:
FrameText2=Date: @DATE@
FrameText3=Revision:
</Properties>
<Symbol>
.PortSym 40 20 1 0
.PortSym 40 60 2 0
.PortSym 40 100 3 0
</Symbol>
<Components>
GND * 1 760 310 0 0 1
GND * 1 940 260 0 0 0
R R1 1 720 310 -18 -55 0 "50 Ω"1"26.85"0"european"0"SMD0603"0
Port VCC 1 1000 190 4 -31 2 "3"0"analog"0"smd_point"0
C C3 1 660 310 -7 17 0 "10 pF"1"0"0""0"neutral"0"SMD0603"0
L L1 1 550 310 -26 10 0 "180 nH"1"0"0""0"inductor_1mH"0
C C4 1 940 230 18 -18 3 "1500 pF"1"0"0""0"neutral"0"SMD0603"0
L L2 1 860 290 -62 -26 3 "1 uH"1"0"0""0"inductor_1mH"0
Port RF_IN 1 360 430 -23 12 0 "1"0"analog"0"smd_point"0
C C1 1 440 430 -26 17 0 "1000pF"1"0"0""0"neutral"0"SMD0603"0
_BJT PSA5454 1 630 430 19 -7 0 "npn"0"1e-16"0"1"0"1"0"0"0"0"0"0"0"0"0"0"0"1.5"0"0"0"2"0"100"0"1"0"0"0"0"0"0"0"0"0"0"0"0"0"0.75"0"0.33"0"0"0"0.75"0"0.33"0"1.0"0"0"0"0.75"0"0"0"0.5"0"0.0"0"0.0"0"0.0"0"0.0"0"0.0"0"26.85"0"0.0"0"1.0"0"1.0"0"0.0"0"1.0"0"1.0"0"0.0"0"0.0"0"3.0"0"1.11"0"26.85"0"1.0"0"7.02e-4"0"1108.0"0"SOT23"0
GND * 1 630 480 0 0 0
Port RF_OUT 1 1000 390 4 -31 2 "2"0"analog"0"smd_point"0
C C2 1 930 390 -53 -55 2 "1000 pF"1"0"0""0"neutral"0"SMD0603"0
Pac P1 1 500 650 18 -26 0 "1"1"50 Ω"1"0 dBm"0"1 GHz"0"26.85"0"con_2"0
Pac P2 1 670 650 18 -26 0 "2"1"50 Ω"1"0 dBm"0"1 GHz"0"26.85"0"con_2"0
GND * 1 670 680 0 0 0
GND * 1 500 680 0 0 0
GND * 1 590 650 0 0 0
SPfile X1 1 590 620 -26 -40 0 "D:/CUBESAT_Transponder/Librerias/mini-circuit/PSA-5454+/PSA-5454+_S2P/PSA-5454+_S-PAR_5V_20mA_25C_UNIT1.S2P"0"2"0"polar"0"linear"0"short"0"none"0"block"0"SOT23"0
.SP SP1 1 800 600 0 9 0 "lin"1"0.1 GHz"1"1 GHz"1"1000"1"no"0"1"0"2"0"none"0
R Rbias 1 610 250 -88 -26 3 "7.5kΩ"1"26.85"0"US"0"SMD0603"0
</Components>
<Wires>
940 190 940 200
860 320 860 390
860 190 940 190
860 190 860 260
750 310 760 310
580 310 610 310
610 190 860 190
610 190 610 220
610 310 630 310
610 280 610 310
940 190 1000 190
490 310 520 310
490 310 490 430
470 430 490 430
490 430 600 430
360 430 410 430
630 460 630 480
630 390 630 400
630 390 860 390
860 390 900 390
960 390 1000 390
500 620 560 620
620 620 670 620
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
Text 495 741 16 #000000 0 TEST CONDITIONS: Vd = 5V, Rbias=7.5K ohms, Id=20 mA @ Temperature =25degC
</Paintings>
