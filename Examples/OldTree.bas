'old tree fractal no recursion by Aurel
var sx,sy,ox,oy,z,xx,yy,px,py,n,r,i,a,b,x,y,bb
    ox = 640 * 0.11      'x-offset
    oy = 480 * 1.1       'y-offset
    z = 100              'zoom-value
wcolor 0,0,0, : fcolor 225, 225, 235
while z < 500
bb=z-bb
'main loop... ....................................
i=0 
 while i < 1000
        a = sx: b = sy
        'drawOldTree a, b, 0
       x=a : y=b : 'print 10,10,n 
'..................................................    
label OldTree 
 r=rnd(1) 
    if r > 0 
       if r < 0.2
         xx = 0.195 * x - 0.488 * y + 0.4431
         yy = 0.344 * x + 0.443 * y + 0.2452
        endif 
      endif 

     if r > 0.2
        if r < 0.4
         xx = 0.462 * x + 0.414 * y + 0.2511
         yy = -0.252 * x + 0.361 * y + 0.5692
        endif 
     endif 

     if r > 0.4
       if r < 0.6
         xx = -0.637 * x + 0.8562
         yy = 0.501 * y + 0.2512
       endif 
     endif 

    if r > 0.6
      if r < 0.8
         xx = -0.035 * x + 0.07 * y + 0.4884
         yy = -0.469 * x + 0.022 * y + 0.5069
      endif 
    endif

      if r < 0
            xx = -0.058 * x - 0.07 * y + 0.5976
            yy = 0.453 * x - 0.111 * y + .0969
      endif 
        
        px = xx * z + ox : py = oy - yy * (z + z * 0.25)
        fcolor 225, 225, bb : print px,py,"."

        if  n < 10
           n=n+1: goto OldTree 
        else 
           sx = xx: sy = yy
           n=0
        endif 
i=i+0.6 : swap
 rect 8,8,100,20 : : print 10,10,i 
wend 
z=z+100
wend :  fcolor 100,150,200 : print 10,10,i 
print 120,10,"Old Tree fractal in micro(A)":swap
