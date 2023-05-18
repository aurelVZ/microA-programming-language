' Hills(AllegroBasic) by CyberMonkey 
' + ChTree in micro(A) by Aurel
ptr img1,img2
var xmax,ymax,i,rr,gg,bb,top,start,x,y,turn,bx,by
var red,green,blue,factor,offrand,offset, mount
xmax=640 :ymax=480 : wcolor 0,0,0 : fcolor 150,180,200
print 510,15,"MARRY CHRISTMAS!" : print 510,50,"HAPPY NEW YEAR!"
LoadImg img1,"treeball.bmp"  , 0, 16, 16,24

start = 260
rr=60:gg=80:bb=100  
mount = 1
while mount < 7
  offset=0
  y=start

label doLoop
    factor = (rand(9)-4)/6
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
'call functions....................................
drawStars()
brownWood()
pineLeafs()

turn = 0
while turn < 20
bx = 150 + rand(100) : by = 50 + rand(300)
ShowImgT img1,bx,by,16,16 

turn = turn + 1
swap
wend


'------------------------------------------------
func drawStars()
var x,y,px,py
x=10 : y=0
   while x < 400
      px= rand(600) : py= rand(480)
      bcolor 0,0,80 : fcolor 220,220,110 : print px,py,"."
      fcolor 120,220,210 
      x=x+4
   wend
swap
endfn

func brownWood()
var ht,xs,aa,msto,minus4,bpxx,bpyy,bpx,bpy
  msto = -100 : minus4 = -4 : bpx=220 : bpy=410 
  fcolor 130, 100, 0
  aa = minus4
while aa < 4
   bpxx=bpx+aa : bpyy=bpy-390 
   line bpxx, bpy, bpx, bpyy 
   aa = aa + 1
   swap
wend
endFn

func pineLeafs()
var rise, rad, frad, xshorten,x1, y1, x2, y2,tpx,tpy,tpxx,tpyy
tpx=220
fcolor 30,120,40 
rad=160 : tpy=bpy-40 
ht=1
while ht < 40 
xs= -100
  while xs < 100  
    xshorten=xs/100  
    rise= rnd(0.93) : tpxx = tpx+(xshorten*rad) : tpyy = tpy-rise*rad
    line tpx, tpy, tpxx, tpyy
 
    aa=1
     while aa < 30 
       frad=rnd(0.9)*rad 
       x1=tpx+(xshorten*frad) 
       y1=tpy-rise*frad 
       x2=tpx+xshorten*(frad+rad/5) 
       y2=tpy-rise*frad+(-rise + (rnd(0.9)-0.456))*(rad/5)
       line x1, y1, x2, y2 
       aa=aa+1    
    wend
 
   xs = xs + 40
  wend 

rad=rad-4 : tpy=tpy-9
ht = ht + 1 : swap
wend  

endFn


