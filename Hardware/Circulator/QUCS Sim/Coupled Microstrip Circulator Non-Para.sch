<Qucs Schematic 0.0.19>
<Properties>
  <View=-408,-85,1751,1357,0.826452,199,0>
  <Grid=10,10,1>
  <DataSet=Coupled Microstrip Circulator.dat>
  <DataDisplay=Coupled Microstrip Circulator.dpl>
  <OpenDisplay=0>
  <Script=Coupled Microstrip Circulator.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Pac P1 1 420 80 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <MLIN MS3 1 400 380 15 -26 0 1 "Subst1" 1 "2.2 mm" 1 "0.70 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <R R1 1 400 600 -92 -26 0 3 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 400 630 0 0 0 0>
  <GND * 1 750 630 0 0 0 0>
  <Pac P3 1 750 560 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P2 1 690 90 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 690 50 0 0 0 2>
  <GND * 1 420 20 0 0 0 2>
  <SUBST Subst1 1 130 80 -30 24 0 0 "4.5" 1 "1.6 mm" 1 "35 um" 1 "2e-4" 1 "0.022e-6" 1 "0.15e-6" 1>
  <Eqn Eqn1 1 280 60 -30 16 0 0 "reflect=dB(S[1,1])" 1 "through=dB(S[1,2])" 1 "isolate=dB(S[1,3])" 1 "couple=dB(S[2,3])" 1 "yes" 0>
  <.SP SP1 1 100 310 0 69 0 0 "lin" 1 "700 MHz" 1 "1.1 GHz" 1 "600" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <MLIN MS18 1 610 580 15 -26 0 1 "Subst1" 1 "0.91 mm" 1 "10.5 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS6 1 400 540 15 -26 0 1 "Subst1" 1 "2.2 mm" 1 "10.3 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS4 1 750 440 15 -26 0 1 "Subst1" 1 "2.2 mm" 1 "12 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MVIA MS20 1 610 630 -23 20 0 3 "Subst1" 1 "1 mm" 1 "26.85" 0>
  <MMBEND MS13 1 420 260 -115 -26 0 2 "Subst1" 1 "2.2 mm" 1>
  <MMBEND MS15 1 400 320 -115 -7 1 2 "Subst1" 1 "2.2 mm" 1>
  <MMBEND MS16 1 750 320 15 -7 0 0 "Subst1" 1 "2.2 mm" 1>
  <MMBEND MS14 1 690 260 15 -26 1 0 "Subst1" 1 "2.2 mm" 1>
  <MTEE MS17 1 400 480 -134 -45 0 1 "Subst1" 1 "2.2 mm" 1 "2.2 mm" 1 "0.91 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MMBEND MS19 1 620 470 15 -7 0 0 "Subst1" 1 "0.91 mm" 1>
  <MLIN MS2 1 420 140 15 -26 0 1 "Subst1" 1 "2.2 mm" 1 "12 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS5 1 690 170 15 -26 0 1 "Subst1" 1 "2.2 mm" 1 "12 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MCOUPLED MS1 1 570 290 -26 -132 1 0 "Subst1" 1 "2.2 mm" 1 "57 mm" 1 "0.55 mm" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS11 1 560 470 -26 -91 1 0 "Subst1" 1 "0.91 mm" 1 "18 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
</Components>
<Wires>
  <420 170 420 230 "" 0 0 0 "">
  <750 590 750 630 "" 0 0 0 "">
  <750 350 750 410 "" 0 0 0 "">
  <750 470 750 530 "" 0 0 0 "">
  <690 200 690 230 "" 0 0 0 "">
  <690 120 690 140 "" 0 0 0 "">
  <690 50 690 60 "" 0 0 0 "">
  <420 20 420 50 "" 0 0 0 "">
  <610 530 610 550 "" 0 0 0 "">
  <450 260 540 260 "" 0 0 0 "">
  <600 260 660 260 "" 0 0 0 "">
  <600 320 720 320 "" 0 0 0 "">
  <430 320 540 320 "" 0 0 0 "">
  <530 470 530 480 "" 0 0 0 "">
  <430 480 530 480 "" 0 0 0 "">
  <400 410 400 450 "" 0 0 0 "">
  <610 530 620 530 "" 0 0 0 "">
  <620 500 620 530 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 60 1281 1154 541 3 #c0c0c0 1 00 1 7e+08 2e+07 1.1e+09 1 -60 5 6.60961 1 -1 0.2 1 315 0 225 "Frequency" "" "">
	<"couple" #0000ff 1 3 0 0 0>
	<"isolate" #00aa7f 1 3 0 0 0>
	<"reflect" #ff00ff 0 3 0 0 0>
	<"through" #00ff00 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
