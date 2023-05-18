'morphing 
var n,m,tau,st,t,pi,cx,cy,pts,j,c1,c2,sc,c,turn,pause,px,py,fr,fb
pi=3.14159 : tau=2*pi
pts=3000 : cx=800/2 : cy=600/2 : sc=cy*0.39  : st=tau/pts : j=2*pi/360
wcolor 0,0,0

turn=1
while turn < 255
fcolor 0,0,0:rect 0,0,800,600
print 10,10,turn
n=rand(25)+2 : m=rand(500)-25

t=0
while t < tau
      cx=sc*(cos(t)+cos(n*t)/2+sin(m*t)/3)
      cy=sc*(sin(t)+sin(n*t)/2+cos(m*t)/3)
      fr=rand(199) : fb = rand(230): fcolor 130,fr,fb
      px=400+cx : py=300+cy
      circle px,py,2
 t = t + st
wend
'swap

t=0
while t < tau
      cx=sc*(cos(t)+cos(n*t)/2+sin(m*t)/3)
      cy=sc*(sin(t)+sin(n*t)/2+cos(m*t)/44)
      fr=rand(199) : fb = rand(200): fcolor 130,fr,fb
      px=400+cx : py=300+cy
      pset px,py
     
 t=t+st
wend
swap

turn = turn + 1
wend
