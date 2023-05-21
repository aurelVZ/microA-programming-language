'Floormaper by Antoni Gual / micro(A) version
'for Rel's 9 LINER contest at QBASICNEWS.COM 1/2003
'---------------------------------------------------
var r,x,y,y1,y2,rc
wcolor 0,0,0 :  fcolor 255,255,255

label fakeinkey
 r = r + 1

y=1
while y < 400
 ' FOR y = 1 TO 99
    y2 = 6 / y
     x=0
     while x < 600
      ' FOR x = 0 TO 319
       y2=y+100 
        if r= 1 :  rc= (159 - x) * y2 : endif
        if r= 2 :  rc= (sqr(125) - x) * y2 : endif
        'rc=rand(x)
       fcolor rc,rc,rc
       pset x, y2
       'rect x , y ,8,8
       x=x+1
       
     wend
    
y=y+1
swap
wend


if r < 2  
  goto fakeinkey
endif

