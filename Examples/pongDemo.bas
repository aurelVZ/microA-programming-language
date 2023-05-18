' pingpong.bas from nuBASIC 
' microA version by Aurel, (c)AurelSoft
ptr a,b,xw,yw,dx,dy,x,y,dx10,dy10
var redraw,cx,cy,cr,p,tx,ty,rx,ry
a = 1
b = 1
cr=10
xw=100
yw=100
'
dx=600
dy=400

x = xw / 20
y = yw / 20
wcolor 0,0,0: swap
redraw = 0

label aLoop

fcolor 0,100,100 : rect 0,0,620,420
   x = x + a
   y = y + b

   dx10=dx/10
   If x < 0 | x > dx10
      xw = xw + (a * 20) 
      a = -a       
      redraw = 1
   EndIf
   
   dy10=dy/10
   If y < 0 | y > dy10
      yw = yw + (b * 20)
      b = -b     
      redraw = 1
   EndIf
   
   
   If redraw > 0
      redraw = 0 
   Endif

   cx=10*x : cy=10*y : fcolor 250,200,100
   circle cx,cy,cr
   rx=cx-40 : ry=cy-40 : fcolor 100,150,180: rect rx,ry,30,25
   tx=cx-35 : ty=cy-35 :print tx,ty,cx

   swap
 pause()
   
   Goto aLoop

func pause()
    p=0
    while p < 150
    'set speed here
     p=p+0.02
    wend
endfn
