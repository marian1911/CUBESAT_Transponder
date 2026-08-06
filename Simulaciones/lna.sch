<QucsStudio Schematic 5.8>
<Properties>
View=-204.312,-523.675,2356.16,775.138,0.733134,258,66
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
C C7 1 -20 260 18 1 3 "33 pF"1"0"0""0"neutral"0"SMD0603"0
C C6 1 150 260 25 5 3 "20 pF"1"0"0""0"neutral"0"SMD0603"0
GND * 1 -20 290 0 0 0
GND * 1 150 290 0 0 0
L L1 1 60 190 -26 10 0 "68 nH"1"0"0""0"inductor_1mH"0
Pac P1 1 -150 270 18 -26 0 "1"1"50 Ω"1"0 dBm"0"1 GHz"0"26.85"0"con_2"0
GND * 1 -150 300 0 0 0
SPfile X1 1 300 190 -26 -40 0 "D:/Proyecto-CUBESAT-TRANSPODER-VHF-UHF/Librerias/mini-circuit/PSA-5454+/PSA-5454+_S2P/PSA-5454+_S-PAR_5V_20mA_25C_UNIT1.S2P"0"2"0"polar"0"linear"0"open"0"none"0"block"0"SOT23"0
GND * 1 300 260 0 0 0
L L2 1 390 190 -26 10 0 "56 nH"1"0"0""0"inductor_1mH"0
C C5 1 450 240 12 16 3 "4.7 pF"1"0"0""0"neutral"0"SMD0603"0
GND * 1 450 290 0 0 0
Pac P2 1 600 270 18 -26 0 "2"1"50 Ω"1"0 dBm"0"1 GHz"0"26.85"0"con_2"0
GND * 1 600 300 0 0 0
.SP SP1 1 20 50 0 9 0 "lin"1"0.01 GHz"1"1 GHz"1"991"1"no"0"1"0"2"0"none"0
</Components>
<Wires>
150 190 150 230
-20 190 -20 230
90 190 150 190
-20 190 30 190
-150 190 -20 190
-150 190 -150 240
150 190 270 190
300 220 300 260
330 190 360 190
420 190 450 190
450 190 450 210
450 270 450 290
450 190 600 190
600 190 600 240
</Wires>
<Diagrams>
<Rect 778 346 652 606 31 #c0c0c0 1 00 1 0 1e+08 1e+09 1 -45.9143 10 30 1 -1 0.5 1 -1 -1 -1 "" "" "">
	<Legend 10 -100 0>
	<"dB(S[1,1])" "" #0000ff 2 3 0 0 0 1 "">
	  <Mkr 1.46e+08 112 -156 3 1 0 0 0 50>
	<"dB(S[1,2])" "" #00dcdc 2 3 0 0 0 1 "">
	  <Mkr 1.46e+08 212 -316 3 1 0 0 0 50>
	<"dB(S[2,1])" "" #ff0000 2 3 0 0 0 1 "">
	  <Mkr 1.46e+08 172 -556 3 1 0 0 0 50>
	<"dB(S[2,2])" "" #00dc00 2 3 0 0 0 1 "">
	  <Mkr 1.46e+08 212 -256 3 1 0 0 0 50>
</Rect>
<Rect 1527 344 755 606 31 #c0c0c0 1 00 1 0 1e+08 1e+09 1 20 10 110 1 -1 0.2 1 -1 -1 -1 "" "" "">
	<Legend 10 -100 0>
	<"stoz(S[1,1])" "" #0000ff 2 3 0 0 0 1 "">
	  <Mkr 1.46e+08 153 -204 3 1 0 0 0 50>
	<"stoz(S[2,2])" "" #ff0000 2 3 0 0 0 1 "">
	  <Mkr 1.46e+08 123 -64 3 1 0 0 0 50>
</Rect>
</Diagrams>
<Paintings>
</Paintings>
