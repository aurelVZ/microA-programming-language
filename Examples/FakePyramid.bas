' Fake 3D Pyramid-by ZXdunny
var a,x,y,ya,ab,ax,cr
var f,ay,ox,oy,p,px
var angle : wcolor 0,0,0 
fcolor 100,170,200 : print 4,4,"fakePyramid": swap
fcolor 0,0,0 : rect 20,20,400,400  : swap
x=400/2 : y=400/2 
ya=y-120 : a=18

'main
LABEL main
f=1
while f < 6
    p=0
    while  p < 6

       ab=a+90*f
       ax=x+100 * cos(ab)
       ay=y-50  * sin(ab)

       fcolor 0,187,250
    
        if x > 399 :x=200 : endif
        x=x+0.01
        CIRCLE x,ya,4
        
        CIRCLE ax,ay,4
       LINE ox,oy,ax,ay
       LINE x,ya,ax,ay
       
       ox=ax 
       oy=ay
 
    p=p+0.4
    wend

f=f+0.4
wend
a=a+1
swap

fcolor 0,0,0 : rect 20,20,500,400 

goto main
