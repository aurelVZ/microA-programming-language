'Fractal19 from mySmallBasic-> in micro(A)
var x,y ,i,r,ux,uy
wcolor 20,60,40 : fcolor 180,180,230
print 10,10,"Fractal19 from MySmallBasic-github...in micro(A)"
x = 100 : y = 100
'change color
fcolor 220,220,100

while i < 10000

r = rand(2)

ux = 150   
	uy = 30   

	If r = 1   
		ux = 30     
		uy = 1000   
	EndIf      

	If r = 2     
		ux = 1000     
		uy = 1000   
	EndIf      

   x = (x + ux) / 2   
   y = (y + uy) / 2       
   pset x, y

i=i+0.5
wend

swap
