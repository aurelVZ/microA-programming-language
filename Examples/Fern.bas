'fern test in micro(A)
var xp,yp,r,n,x1,y1 ,xx,yy,x,y
xp=0: yp=0 : wcolor 0,0,0
fcolor 0,150,0
n=1
while n < 5000

r = rand(100)
if r < 1
 'if r > 0 
     xp = 0 
     yp = 0.16 * y
  'endif
endif

if r > 1 
   if r < 8
      xp = 0.2 * x - 0.26 * y
      yp = 0.23 * x + 0.22 * y + 1.6
   endif
endif

if r > 8
    if r < 15
       xp = -0.15 * x + 0.28 * y
       yp = 0.26 * x + 0.24 * y + 0.44
    endif

if r > 15   
     Xp = 0.85 * X + 0.04 * Y
     Yp = -0.04 * X + 0.85 * Y + 1.6
endif     
endif

x = xp
y = yp

xx = x * 45
yy = y * 45 - 225

Pset (xx + 320),( -yy + 240)
'swap
n = n + 1
wend
swap


fcolor 220,210,100
print 10,10," fern fractal in micro(A) ":swap
