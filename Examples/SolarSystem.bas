'mini solar system - micro(A)
var x,y,x1,y1,pi,t,w,h ,r, w2, h2,fPi,fRad,r2
var x2,y2, x3,y3, x4,y4, x5,y5, x6,y6, x7,y7, x8,y8, x9,y9
var r2,r3,r4,r5,r6,r7,r8,r9
w = 800 : h = 600 : w2 = w / 2 : h2 = (h / 2)-20 
fPi = Cos(0.98) : fRad = fPi / 180
wcolor 0,0,0 
t = 0
r  = 30
r2 = 50
r3 = 90
r4 = 130
r5 = 150 
r6 = 190
r7 = 220
r8 = 240
r9 = 270
fcolor 0,100,200 

'----------------------------------
label start

fcolor 160,160,160 : rect 0,0,800,600 
fcolor 160,160,160 : circle w2,h2,r9
fcolor 160,160,160 : circle w2,h2,r8
fcolor 160,160,160 : circle w2,h2,r7
fcolor 160,160,160 : circle w2,h2,r6
fcolor 160,160,160 : circle w2,h2,r5
fcolor 160,160,160 : circle w2,h2,r4
fcolor 160,160,160 : circle w2,h2,r3
fcolor 160,160,160 : circle w2,h2,r2
fcolor 160,160,160 : circle w2,h2,r

'sun
fcolor 240,200,100 : circle w2,h2,10 : print 4,4,"MINI SOLAR SYSTEM"
 
x = w2 + r * Cos(t + 0.5 + fRad * 90) : y = h2 + r * Sin(t+0.5 + fRad * 90)
fcolor 150,100,20 : circle x,y,5 :print x,y,"mercury"
 
x2 = w2 + r2 * Cos(t-0.5 + fRad * 90) : y2 = h2 + r2 * Sin(t-0.5 + fRad * 90)
fcolor 200,180,0 : circle x2,y2,8 : print x2,y2," venus"

x3 = w2 + r3 * Cos(t + fRad * 90) : y3 = h2 + r3 * Sin(t + fRad * 90)
fcolor 0,150,200 : circle x3,y3,8 : print x3,y3," earth"  

x4 = w2 + r4 * Cos(t+0.9 + fRad * 90) : y4 = h2 + r4 * Sin(t+0.9 + fRad * 90)
fcolor 240,160,100 : circle x4,y4,7 : print x4,y4," mars"

x5 = w2 + r5 * Cos(t- 0.9 + fRad * 90) : y5 = h2 + r5 * Sin(t- 0.9 + fRad * 90)
fcolor 180,190,210 : circle x5,y5,12 : print x5,y5," jupiter"

x6 = w2 + r6 * Cos(t- 2.5 + fRad * 90) : y6 = h2 + r6 * Sin(t- 2.5 + fRad * 90)
fcolor 230,190,110 : circle x6,y6,10 : print x6,y6," saturn"

x7 = w2 + r7 * Cos(t- 3.2 + fRad * 90) : y7 = h2 + r7 * Sin(t- 3.2 + fRad * 90)
fcolor 130,190,240 : circle x7,y7,6 : print x7,y7," uranus"

x8 = w2 + r8 * Cos(t- 4.2 + fRad * 90) : y8 = h2 + r8 * Sin(t- 4.2 + fRad * 90)
fcolor 130,190,160 : circle x8,y8,6 : print x8,y8," neptune"

x9 = w2 + r9 * Cos(t- 5.5 + fRad * 90) : y9 = h2 + r9 * Sin(t- 5.5 + fRad * 90)
fcolor 160,160,160 : circle x9,y9,5 : print x9,y9," pluto"

t = t + 0.001666
swap
  
goto start
 
