' maya_motor in micro(A)
fcolor 200,220,250
var pi,rr,gg,bb,n
pi = 3.14 : wcolor 0,0,0
var level,angle,i
var insize,x1,y1,x2,y2,d
level = 300 : angle = 0
x1=200 : y1=200


while n < 2000
  angle = angle - 20


i=1
   while i < 100
     d=9   
     x2 = x1 + cos(angle/d) * (d*10)
     y2 = y1 + sin(angle*d) * (d*10)
     rr=200-d*10 : gg=190-d : bb= 220
     fcolor rr,gg,bb
     'Line x2,y2,x1,y1
     circle x2,y2,d
     angle = angle + 20 
     d=d-1
    i=i+1
  ' print 10,10,n
   wend
'wcolor 0,0,0
n=n+0.1
swap
wend
