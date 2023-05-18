' random stars - micro(A) by Aurel
var x,y,p,r, lastx,lasty
var x2,y2,counter,a,b,px,py,p,posx,posy
wcolor 0,0,80 : bcolor 0,0,80
fcolor 220,220,110
x=10
y=0
label again
wcolor 0,0,80 : ' rect 1,1,640,480
'random star position...
x=10
   while x < 620
       py = rand(400) 
       px = x
      print px,py,"."
      
      x=x+10
     
   wend
swap 
 rect 1,1,640,480
fcolor 120,220,210 : print 10,460,"random stars..." : swap
goto again
swap
