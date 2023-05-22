'energy bulb
var t,x,y,col
'X varies between -1.7 and +1.7, Y from -1.1 to + 1.1
wcolor 0,0,0 : fcolor 200,200,140 : print 10,10,"Please Wait..." : swap
t=0
fcolor 180,220,140 :
while t < 3500
x = sin(0.99*t)-0.7 * cos(3.01*t)
y = cos(1.01*t)+0.1 * sin(15.03*t)
x = x*100+300 
y = y*100+300
pset y,x 

t=t+0.1
'swap
wend


print 10,30,"Energy Bulb": swap
