'Daric Fern
var x,y,nextX,nextY,i,sx,sy,a,xx,yy
var start,endtime,time
var rc , bc : rc = 144 : bc = 144
wcolor 0,0,0: fcolor 144,238,144
nextX = 0 : nextY = 0
sx=400/10 : sy = 300/10
i=1

GETTICK start
while i < 10000
'play with rand value 50 to 100
a = rand(70)
If a < 1
    nextX = 0
    nextY = 0.16 * y 
EndIf

If a > 1
    if a < 8
       nextX = 0.2 * x - 0.26 * y
       nextY = 0.23 * x + 0.22 * y + 1.6
    endif
EndIf

If a > 8 
   if a < 15
       nextX = -0.15 * x + 0.28 * y
       nextY = 0.26 * x + 0.24 * y + 0.44 
   endif  
EndIf
 
If a > 15
  nextX = 0.85 * x + 0.04 * y
  nextY = -0.04 * x + 0.85 * y + 1.6    
EndIf

x = nextX
y = nextY

Pset (x * sx+200),( y * sy)
swap  ' uncomment this line if you want to watch drawing

i=i+1
wend
'swap
GETTICK endtime
time = (endTime - start) / 1000
fcolor 200,200,240: print 10,450,time : swap 
