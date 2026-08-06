<QucsStudio Schematic 5.8>
<Properties>
View=48.5673,-231.325,1485.16,606.79,1.16666,12,0
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
C C8 1 420 250 18 1 3 "33 pF"1"0"0""0"neutral"0"SMD0603"0
C C9 1 590 250 -89 55 3 "20 pF"1"0"0""0"neutral"0"SMD0603"0
GND * 1 420 280 0 0 0
GND * 1 590 280 0 0 0
L L2 1 500 180 -26 10 0 "68 nH"1"0"0""0"inductor_1mH"0
Pac P2 1 700 260 18 -26 0 "2"1"50 Ω"1"0 dBm"0"1 GHz"0"26.85"0"con_2"0
GND * 1 700 290 0 0 0
Pac P1 1 310 260 18 -26 0 "1"1"50 Ω"1"0 dBm"0"1 GHz"0"26.85"0"con_2"0
GND * 1 310 290 0 0 0
.SP SP1 1 310 60 0 9 0 "lin"1"0.01 GHz"1"1 GHz"1"991"1"no"0"1"0"2"0"none"0
</Components>
<Wires>
590 180 590 220
420 180 420 220
530 180 590 180
420 180 470 180
700 180 700 230
590 180 700 180
310 180 420 180
310 180 310 230
</Wires>
<Diagrams>
<Rect 866 317 560 410 31 #c0c0c0 1 00 1 0 1e+08 1e+09 1 -53.6589 10 4.87802 1 -1 0.5 1 -1 -1 -1 "" "" "">
	<Legend 10 -100 0>
	<"dB(S[2,1])" "" #ff00ff 2 3 0 0 0 1 "">
	  <Mkr 1.46e+08 144 -397 3 1 0 0 0 50>
	  <Mkr 4.35e+08 254 -307 3 1 0 0 0 50>
</Rect>
</Diagrams>
<Paintings>
</Paintings>
