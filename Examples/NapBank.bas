'This program will only run using a version 
' used from Napolen Brandy Basic dBank.nap
'program is really slow
var xlow , xhigh, ylow ,yhigh ,depth ,xscale ,yscale ,c,x,y
var px, py
wcolor 0,0,0 
xlow = -10
xhigh = 10
ylow = -10
yhigh = 10
depth = 20
xscale = 6.4 '30
yscale = 4.8 '12
c = -1000
'FOR x = xlow TO xhigh
while c < 1000

x=xlow
while x < xhigh
  y=ylow
   while y < yhigh
     'DRAW xscale*(x+y), yscale*(y-x)+c/(x*x+y*y+depth)
     px = 300 + xscale*(x+y) : py =200 + yscale*(y-x)+c/(x*x+y*y+depth)

     fcolor 220,200,100 : pset px,py : 'swap
     'NEXT
      y=y+1
   wend

x=x+1
wend
'swap
c = c + 10 :swap
rect 100,0,380,380 
wend

