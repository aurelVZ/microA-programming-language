' destroying julia ***not adult ***
var c1,c2,x,y,theta
var pi,r,w0,w1
var i,m,n
var rr,gg,bb,rc,m1,m2,rx,radius
 pi=3.14
wColor 0,0,0
'input
c1 = -0.14 : c2 = 0.94 : x = 5.3 : y = 9.7
fcolor 220,200,250
rc=2 : i =1
while rc < 360
    i=rc
    c2 = c2 - 0.0005
     c1 = c1 + 0.0005
    while i < 600
    'c2 = c2 - 0.002
    'c1 = c1 + 0.002
    'set w0=x-c1
		w1=y-c2
		w0=x-c1

		 if w0 = 0
           theta = pi/1.41
		 endif

		 if w0 > 0 
		   theta = atan(w1/w0)
         endif 

		 if w0 < 0 
			theta = pi + atan(w1/w0)+0.1
		 endif

		  r = SQR(w0*w0+w1*w1)
		  theta = (theta/2)+INT(RAND(3))*pi
		  r = SQR(r)
		  x = r*COS(theta)
		  y = r*SIN(theta)
          
		
		 if i < 220
             c2 = c2 - 0.0005 
		   i=i+1
		 endif

		 m=(x+2)*600/4
		 n=(2-y)*600/4

        'rr=RAND(255),gg=RAND(255),bb=RAND(255)
        fcolor 200,180,160
	
        'pset m,n
        rx=RAND(5)
        m1 = m+1, m2=n-1
        radius = rand(5)
        pset m1,m2
        i=i+1
      	
      wend
swap
fcolor 0,0,0 : rect 0,0,800,600
rc=rc+1
wend
fcolor 100,200,250 : print 5,5,"Julia fractal in micro(A)"
