<QucsStudio Schematic 5.8>
<Properties>
View=-107.652,-20.5501,1745.96,934.302,0.999999,255,68
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
</Symbol>
<Components>
GND * 1 520 340 0 0 0
C C1 1 520 300 19 -63 3 "100nF"1"0"0""0"neutral"0"SMD0603"0
L L2 1 520 240 18 -42 3 "0.38 nH"1"0"0""0"inductor_1mH"0
GND * 1 220 230 0 0 0
R R2 1 520 180 19 -21 3 "0.015 Ω"1"26.85"0"european"0"SMD0603"0
GND * 1 470 340 0 0 0
GND * 1 690 350 0 0 0
C C2 1 690 310 19 -63 3 "10pF"1"0"0""0"neutral"0"SMD0603"0
L L3 1 690 250 18 -42 3 "0.35 nH"1"0"0""0"inductor_1mH"0
R R3 1 690 190 19 -21 3 "0.12 Ω"1"26.85"0"european"0"SMD0603"0
GND * 1 640 350 0 0 0
L L1 1 390 110 -26 10 0 "0.35 nH"1"0"0""0"inductor_1mH"0
Iac I1 1 220 180 20 -26 0 "1A"1"1 GHz"0"0"0"0"0"con_2"0
R R5 1 640 310 -32 66 3 "10G"1"26.85"0"european"0"SMD0603"0
R R4 1 470 300 -23 69 3 "5G"1"26.85"0"european"0"SMD0603"0
R R1 1 310 110 -26 15 0 "3m"1"26.85"0"european"0"SMD0603"0
.AC AC1 1 200 320 0 9 0 "lin"1"10 kHz"1"4GHz"1"1000"1"no"0"none"0
</Components>
<Wires>
520 330 520 340
340 110 360 110
420 110 520 110
220 110 280 110 "Z_in" 250 70 20 ""
220 110 220 150
220 210 220 230
520 110 520 150
470 270 520 270
470 330 470 340
520 110 690 110
690 340 690 350
690 110 690 160
640 280 690 280
640 340 640 350
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
