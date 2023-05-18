'alien_Pipes - micro(A) by Aurel
var lenght,angle,x,y,diff,adiff
var x2,y2,counter,a,b,pi,r, px,py,n
wcolor 0,0,0 
pi=3.14596
lenght = 300
angle = 3.44
x = 400
y = 300
x2 = 55
diff = 1.14
adiff = 0.8
y2 = y
fcolor 0,120,80
'line x y x2 y2
lenght = lenght - diff
counter = 0

while counter < 360	
if counter < 80 : fcolor 0,170,180 : endif
if counter > 80 : fcolor 30,80,150 : endif
	
	angle = angle + adiff
	lenght = lenght - diff
	a = sin(angle*pi) * lenght
	b = tan(angle*pi/2) * lenght
	x2 = x + b
	y2 = y + a
	r=(counter/pi)/3
	circle x2,y2,r	
	counter=counter + 1
wend
 
fcolor 200,200,220 : print 250,5,"Alien pipes in micro(A)" : swap     
