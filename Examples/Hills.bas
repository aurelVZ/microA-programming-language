' Hills from AllegroBasic by Cyb to micro(A) by Aurel
var xmax,ymax,i,rr,gg,bb,top,start,x,y
var red,green,blue,factor,offrand,offset, mount
xmax=640 :ymax=480 : wcolor 0,0,0 : fcolor 200,180,100
print 10,10,"Lakeside"

start = 100
rr=70:gg=90:bb=70  
mount = 1
while mount < 7
  offset=0
  y=start

label doLoop
    factor = (rand(9)-4)/2
    offrand = offset + rand(7)

   x=offset
    While x < offrand
      y = y + factor
      fcolor rr,gg,bb : line x,y,x,ymax 
     x=x+1
    wend
 offset=x
'fcolor 100,100,160 : print 10,30,offset
 If offset < xmax : goto doLoop : endif

  rr=rr-20: gg=gg-10 : bb=bb-10
  If rr < 0 : rr=0 : EndIf
  If gg < 0 : gg=0 : EndIf
  If bb < 0 : bb=0 : EndIf
  start = start + 20 + rand(40)
mount = mount + 1
swap
wend
