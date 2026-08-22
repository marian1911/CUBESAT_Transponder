<QucsStudio Schematic 5.8>
<Properties>
View=-40.6735,-2,1274.04,737.879,1.36111,343,121
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
Pac P1 1 430 300 18 -26 0 "1"1"50"1"0 dBm"0"1 GHz"0"26.85"0"con_2"0
GND * 1 430 330 0 0 0
GND * 1 540 330 0 0 0
GND * 1 680 330 0 0 0
GND * 1 820 330 0 0 0
Pac P2 1 930 300 18 -26 0 "2"1"50"1"0"0"1 GHz"0"26.85"0"con_2"0
GND * 1 930 330 0 0 0
.SP SP1 1 430 460 0 9 0 "log"1"44MHz"1"4.4GHz"1"500"1"no"0"1"0"2"0"none"0
L L1 1 610 220 -26 10 0 "27nH"1"0"0""0"inductor_1mH"0
L L2 1 750 220 -26 10 0 "27nH"1"0"0""0"inductor_1mH"0
C C1 1 540 300 17 -26 1 "10pF"1"0"0""0"neutral"0"SMD0603"0
C C2 1 680 300 17 -26 1 "16pF"1"0"0""0"neutral"0"SMD0603"0
C C3 1 820 300 17 -26 1 "10pF"1"0"0""0"neutral"0"SMD0603"0
</Components>
<Wires>
430 220 430 270
430 220 540 220
540 220 540 270
680 220 680 270
820 220 820 270
540 220 580 220
640 220 680 220
680 220 720 220
780 220 820 220
930 220 930 270
820 220 930 220
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
Text 590 400 16 #000000 0 low-pass filter, 450MHz cutoff \n 5^{th} order Chebyshev , PI-type, \n impedance 50 \\Omega
</Paintings>
