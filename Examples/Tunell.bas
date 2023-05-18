' tunnell by MGA/B+ in QB64pe
' micro(A) version by Aurel 
var t,r,s,i
wcolor 0,0,0 : fcolor 255,255,255

t=1
while t < 11

    while r < 640
        s = 640 / r
        fcolor 0,0,0: rect 0,0,640,400  'cls
        fcolor 255,255,255              'restore color

        i=0
        while i < 640
            Line 320, 200,i, 0
            Line 320, 200,i, 400
        i=i+s
        wend

        i=0
        while i < 400
            Line 320, 200,0, i
            Line 320, 200,640, i
        i=i+s
        wend

       swap
       
    r=r+1
    wend
  
t=t+0.01
wend
