' specBas curves with movin circle
' version for micro(A) by Aurel
ptr img
var y,x,a,b,i, rc,gc,bc
LoadImg img,"tinyBall.bmp",0,4,4,16 
wcolor 40,40,80
x=190+60*a+28 * SIN(i*(a+1))
y=30 +60*b-28 * COS(i*(b+1))

a=0
while a < 7
	b=0
	while b < 7
        rc=((a+b)/2)*51
	   fcolor rc,128,192
          i=0
	     while i < 6.28  'STEP .004:
            x=190+60*a+28 * SIN(i*(a+1))
            y=30 +60*b-28 * COS(i*(b+1))
           PSET x,y : ' swap
           i=i+0.004
         wend
         
	b=b+1
     wend
a=a+1
swap
wend

i=0:
Label doLoop
'rect 0,0,600,400
'ShowImgT img,x,y,4,4
     a=0
	while a < 7
         b=0
         while b < 7 
             x=190+60*a+28 * SIN(i*(a+1))
             y=30 +60*b-28 * COS(i*(b+1))
             fcolor 200,0,0,: circle x,y,2 	   
             'ShowImgT img,x,y,4,4 
        b=b+1
        wend
        'swap
    a=a+1
    wend
i=i+0.02
	  
	 '  fcolor 40,40,80,rect 0,0,600,400
      swap
Goto doLoop
