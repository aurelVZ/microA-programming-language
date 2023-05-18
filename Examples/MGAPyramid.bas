'"Rotating Pyramid" 'b+ 2022-03-01 
' micro(A) version by Aurel
var x1,y1,x2,y2,x3,y3,x4,y4
var ax,ay,cx,ex,ey,xr,yr,a,width,Pi
width=800 : Pi = 3.14159
cx = width / 2
ax = cx: ay = 50    ' apex
ex = cx: ey = 330   ' ellipse
xr = cx * 0.7 : yr = 0.33 * xr

LABEL DoLoop
    fcolor 0,0,0: rect 0,0,800,600  'cls
    x1 = ex + xr * Cos(a)            : y1 = ey + yr * Sin(a)
    x2 = ex + xr * Cos(a + Pi * 0.5) : y2 = ey + yr * Sin(a + Pi * 0.5)
    x3 = ex + xr * Cos(a + Pi)       : y3 = ey + yr * Sin(a + Pi)
    x4 = ex + xr * Cos(a + Pi * 1.5) : y4 = ey + yr * Sin(a + Pi * 1.5)
    fcolor 220,200,100 
    line x1, y1, x2, y2
    line x2, y2, x3, y3
    line x3, y3, x4, y4
    line x4, y4, x1, y1
    line x1, y1, ax, ay
    line x2, y2, ax, ay
    line x3, y3, ax, ay
    line x4, y4, ax, ay
    a = a + 0.01    ' use 0.01 if is slow
    swap
  
GoTo DoLoop
