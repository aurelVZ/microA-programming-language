' Coded By Ashish - "Dragon curve" in QB64
' micro(A) version by Aurel
var sx,sy,ox,oy,z,i,x,y,xx,yy,n,a,b,r,px,py
wcolor 0,0,0 : fcolor 155, 180, 250:print 5,5,"please wait..."
    z = 40
    ox = 600 * 0.46
    oy = 380 * 0.09
    fcolor 255, 180, 0
i=0
 while i < 3000
        a = sx: b = sy
         x=a : y=b 
   label drawDragon
      r=rnd(1)
       if r>0 & r<0.8
            xx = 0.824074 * x + 0.281428 * y - 1.88229
            yy = -0.212346 * x + 0.864198 * y - 0.110607
       else
            xx = 0.088272 * x + 0.520988 * y + 0.78536
            yy = -0.463889 * x - 0.377778 * y + 8.095795
       endif
        
        px = xx * z + ox : py = yy * z + oy
        pset px,py


        if n < 5  
           n=n+1: goto drawDragon 
        else 
            sx = xx: sy = yy
            n=1
        endif
 i=i+1
swap
wend
print 10,510,"Dragon Curve in micro(A) by Aurel based on Ashish /Dragon curve/ in QB64 " :swap   
     
