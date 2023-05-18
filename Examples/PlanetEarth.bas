'Rotating EARTH/MOON Davey W Taylor-ported to AllegroBASIC by Cybermonkey
'version for micro(A) by Aurel
var moonspin,earthspin,yflip,cr,cr2,pi,a
var d,di,r,ri,s,x,y,d2,r2,s2,t,x2,y2,xup,yup
moonspin = 64
earthspin = 8
yflip = 1

' program...
pi = 3.14
a = 30
yflip = earthspin + yflip
fcolor 0,0,0 : rect 0,0,800,600


label doLoop 
fcolor 0,0,0 : rect 0,0,640,480

d = d + earthspin / 360
r = d * (pi / 180)
di = di + yflip / 360
ri = di * (pi / 180)
s = 20 + cr
x = 320 + (200 * sin(r)) +20
y = 175 + (50 * sin(ri)) +20

d2 = d2 + (moonspin \ 360) : 'should be \ ->integer division or frac()

r2 = d2 * (pi / 180)
s2 = 4 + (cos(r2) * 2) + (cos(r) * 2)
t = 50 + (25 * cos(r))
x2 = x + t * sin(r2) 
y2 = y + 4 * cos(r2)

cr = 10 * cos(r) : cr2 = 10 * cos(r2)

if cr > 0 : fcolor 255,255,0 : circle 320, 175, 100 : endif

if cr2 < 0 : fcolor 200,100,100: circle x2, y2, s2 : endif

fcolor 0,60,150 : circle x,y,s : xup = x-30 : yup = y-45 : print xup,yup,"EARTH"

cr = 10 * cos(r) : cr2 = 10 * cos(r2)
if cr2 > 0 : fcolor 100,100,100 : circle x2, y2, s2 : endif

if cr < 0 : fcolor 255,255,0 : circle 320, 175, 100 : endif
x=x+20
print 300,20,"SUN" 
swap  'flip back buffer to front buffer

goto doLoop                             
