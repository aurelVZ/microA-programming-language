' black Hole demo in micro(A) 
var w,h,a,r,ps,i,px,py,rad
var rr,gg,bb,rx,ry 
 w=640/2 : h=480/2
wcolor 0,0,100 
 fcolor 200,220,160
print 10,10,"Black hole"
a=1 : r=1  

label again
i=1
fcolor 0,0,0 : rect 0,0,800,600

while i < 60
  ps=70/(i/a)
  rx=cos(i*r)*ps+w 
  ry=sin(i*r)*ps+h
  fcolor 200,220,160
  circle ry,rx,4 
  print 10,10,"Black hole" 
'change values between 0.1 and 0.08
i=i+0.3
'swap
wend

a=a+0.01

if a < 20
   a=a+0.1
    r = r - 0.19
endif

if r < 360
  r=r+0.01
endif

if r>360 
 r=r-1
endif

swap
goto again
'commenr

