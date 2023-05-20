' heart shape
'simple ploting with pixels
var x,y,r,a
wcolor 0,0,100  : fcolor 220,200,0

label start
r = 10

x = 200 + (r * 16 * sin(a) * sin(a) * sin(a))
y = 200 + ( -r * ( 17 * cos( a) -8 * cos(2*a) +1.75 * cos(2*a) - cos(2*a)) )



circle x,y,3

a=a+0.01

if a < 6.28
goto start
endif



print 10,10,"simple ploting with circles - Heart curve" : swap
