'star flower in micro(A) by Aurel
var lenght,angle,x,y,diff,adiff
var x2,y2,counter,a,b,pi 
wcolor 0,0,0 : fcolor 200,200,220 
print 5,5,"Star Flower in micro(A) - (c) AurelSoft"
pi = 3.14596
lenght = 300
angle = 8
x = 300
y = 300
x2 = 55
diff = 3.14159
adiff = 0.8
y2 = y
fcolor 0,120,80
lenght = lenght - diff

label repeat

'print 10,10,counter
if counter < 80
  fcolor 0,120,80
else
  fcolor 0,80,120
endif	

   angle = angle + adiff
   lenght = lenght - diff
   a = sin(angle*pi)*lenght
   b = cos(angle*pi)*lenght
   x2 = x + b
   y2 = y + a	
   line x,y,x2,y2 
   circle x2,y2,5
   'swap
   counter = counter + 1 
 
if counter < 191
   swap
   goto repeat
endif
