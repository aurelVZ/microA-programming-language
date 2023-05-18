' Coded By Ashish in QB64
' mod for micro(A) by Aurel
var gx,gy,i,vx,vy,x,y,xx,yy,r,px,py,n
wcolor 0,0,0 : fcolor 255,255,255
print 5,5,"drawSpiral...please wait..."
gx = 640 * 0.75 : gy = 480 * 0.25  
i=0 
 while i < 1000
        vx=gx
        vy=gy
        x=vx : y=vy      
        
label drawSpiral 
   r = rnd(0.6)
        if r > 0 
           if r < 0.05
              xx = -0.121212 * x + 0.257576 * y - 6.721654
              yy = 0.151515 * x + 0.053030 * y + 1.377236
           endif
        endif

         if r > 0.05
            if r < 0.1
              xx = 0.181818 * x - 0.136364 * y + 6.086107
              yy = 0.090909 * x + 0.181818 * y + 1.568035
            endif
         endif

         if r > 0.1
            xx = 0.787879 * x - 0.424242 * y + 1.758647
            yy = 0.242424 * x + 0.859848 * y + 1.408065
        endif

        px = xx * 60 + 640 * 0.5 : py = yy * 60
        print px,py,"."

        if n < 10
             n=n+1 : goto drawSpiral
        else
            gx = xx
            gy = yy
            n=1
        endif

i=i+0.5
swap  
wend
     
