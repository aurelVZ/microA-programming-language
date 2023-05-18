'spinning diamond mini-micro script in micro(A)
var pi,t,m,i,r,x,a,y,b,c,d,e,f,p6,ti
pi=3.14
p6=pi/6
t=0
m=480
wcolor 0,0,0
label main
    
    rect 0,0,800,600
    'set rotation speed 
    t=(t+0.01) \ p6
     i=0
     while i < 12
        
        r=cos(p6*i+t)
        x=m-300*r
        a=m-250*r
        y=400-40*cos(p6*(i-3)+t)
        b=y+50
        fcolor 200,200,240
        line m,100,x,y
        line x,y,a,b
        'swap
        if i < 12
            fcolor 0,150,200 
            line a,b,e,f
            line x,y,c,d
        endif
        c=x : d=y : e=a : f=b 
      i=i+1
          
    wend

swap 
goto main

