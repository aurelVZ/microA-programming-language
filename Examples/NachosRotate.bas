' nachos rotate by PW
var i, r, t,a,x,y,yr
wcolor 0,0,0
fcolor 108,206,255 : print 10,400,"Nachose Flower"

while t < 200
'wcolor 0,0,0
a=130

while a > 0
i=0
while i < 180
    x= 300+cos(i+r)*a : y=236+sin(i+r)*a : yr=236+sin(i-r)*a 
    fcolor 242,210,101 : circle x,y,2  
    fcolor 108,206,255 : circle x,yr,2 

i=i+9
wend
'swap
a=a-6
wend 

r = r+0.08
'print 10,10,r

if r > 360 
r = -r
endif

t=t+0.5 :swap
rect  50,50,400,340
wend
