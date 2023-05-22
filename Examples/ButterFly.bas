'butterfly micro(A)
var x,y,i,a,turn,rr,gg,bb,cx,cy,cr
wcolor 0,0,0
'frontpen 200,200,0
while turn < 30 

i=0
fcolor 0,0,0 : rect 0,0,640,480
'print 10,90,turn
   while i < 120
   rr=rand(255) :gg=rand(255): bb=rand(255)
   fcolor rr,gg,bb
    x = sin(i+a)*50 - cos(i-a)*i
    y = cos(i+a)*50 + sin(i-a)*i
    cx=x+320: cy=y+240: cr=sin(i)*5 
    circle cx,cy,cr
    'pset cx,cy
i=i+0.6
'swap
wend

a = a + 0.073

if a > 360 
a = -a
endif

turn = turn + 0.1
swap
'print 5,5,turn
wend
