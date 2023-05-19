' LOW PASS FILTER Frequency
' def variables...
str a,b : var fc,r,c,pshift,f,fi,pi
wcolor 0,40,40 : bcolor 0,0,0: fcolor 255,255,255
print 10,10,"Cut-off Frequency and Phase Shift"
fcolor 55,155,200
print 10,30,"Fc = 1/(2*pi*r*c)  -> in Hz"
print 10,50,"Phase Shift fi = -atan(2*pi*f*r*c)"

pi = 3.14
fcolor 200,155,100
print 10,80,"input values R (resistor) and C (capacitor)"
print 10,100,"------------------------------------------"

'enter resistor value in ohms
r=6800  '6k8
'enter capacitor value in farads
c=0.00000000033 '330pF
'print values...
'-----------------------------------
fcolor 220,220,100
print 10,120,"RESISTOR" : print 120,120,r
fcolor 120,160,100
print 10,140,"CAPACITOR" : print 120,140,c
'------------------------------------
fc = 1 / (2 * pi * r * c)
'------------------------------------
'print frequency...
fcolor 140,180,200
print 10,180,"FREQUENCY" : print 120,180,fc

line 10,240,360,240
'draw resistor
fcolor 220,220,100 : rect 100,230,80,20
'draw capacitor
fcolor 120,160,100
rect 234,300,80,20
fcolor 140,180,200:line 10,380,360,380
print 270,240,"|"
print 270,260,"|"
print 270,280,"|"
print 270,320,"|"
print 270,340,"|"
print 270,360,"|"

print 10,440," LOW PASS FILTER (c) AurelSoft"
swap
