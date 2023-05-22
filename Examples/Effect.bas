'specBas effect in micro(A)-by Aurel 
var a,b,x,y,u,v,t,hw,hh,n,r,px,py,p
var wp,rr,gg,bb,i,j, cx,cy,cr,rix
var TAU
wcolor 0,0,0 
TAU = 6.28 
hw=400/2 : hh=400/2: n=180 : r = TAU/235
t=0

While t < 50

i=10 
'while i < n
rect 0,0,600,600
label loop_i
       j=10
       'while j < n
       label loop_j
	    u = sin(i + v) + sin(r*i + x) : v = cos(i + v) + cos(r * i + x)
         x = u + t
         'fcolor i,j,199
         'px = hw + u * hw * 0.4 : py = hh + v * hh * 0.4 : pset px,py 
        fcolor i,j,199 : pset ( hw + u * hw * 0.4) , (py = hh + v * hh * 0.4)           
        j=j+1 
	  if j < n : goto loop_j : endif
   i=i+1:swap 

'wend
if i < n : goto loop_i : endif

t=t+1 
'rect 0,0,600,600
wend

