'chTree 2 by Aurel
var rise, rad, frad, xshorten 
var left, top, width, height, bpx, bpy, tpx, tpy 
var x1, y1, x2, y2
var ht,xs,aa,msto
var tpxx,tpyy,bpxx,bpyy,minus4
var x,y,px,py
wcolor 0,0,0
drawStars()
msto = -100
minus4 = -4
bpx=220 : bpy=410 : tpx=bpx
 
'brown ..............................
fcolor 130, 100, 0
aa = minus4
while aa < 4
   bpxx=bpx+aa : bpyy=bpy-390 
  line bpxx, bpy, bpx, bpyy 
aa = aa + 1
swap
wend

'green............................... 
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

bcolor 80,0,100 :fcolor 200,220,200 
print 300,40," * * * Merry Christmas ! * * * "
print 300,80," * * * Happy New Year  ! * * * "
bcolor 60,0,120 :fcolor 200,220,200 
print 350,120," micro(A) by Aurel "

fcolor 220,200,100 : circle 190,100,6 : circle 190,100,4: circle 190,100,2
fcolor 250,100,100 : circle 250,180,6 : circle 250,180,4: circle 250,180,2
fcolor 150,100,250 : circle 175,165,6 : circle 175,165,4: circle 175,165,2
fcolor 80,150,255  : circle 140,225,6 : circle 140,225,4: circle 140,225,2
fcolor 80,250,255  : circle 270,245,6 : circle 270,245,4: circle 270,245,2
fcolor 200,150,255 : circle 90,302,6  : circle 90,302,4 : circle 90,302,2
fcolor 250,180,255 : circle 295,302,6 : circle 295,302,4: circle 295,302,2
swap

func drawStars()
wcolor 0,0,80
x=10 : y=0
   while x < 400
      px= rand(600) : py= rand(480)
      bcolor 0,0,80 : fcolor 220,220,110 : print px,py,"."
      fcolor 120,220,210 
      x=x+4
   wend
endfn
