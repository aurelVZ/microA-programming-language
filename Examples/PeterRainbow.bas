' abstract rainbow by PeterWirbelauer from o2 forum
' micro(A) version by Aurel
var yacc,yvel,xyel,x,y,r
var m,x1,gx,gy,y1,s,q
var x2,x3,x4,x5,x6,x7,x8,y2,y3,y4,y5,y6,y7,y8
m  = -1.57 : x1 = 1 : y1 = 310 : q  = 0.00101
gx = 0.15  : gy = 0.3 : s = 1
wcolor 0,0,0 : bcolor 0,0,100
fcolor 150,200,220: print 280,10,"Rainbow by Peter Wirbelauer"


While s < 3108
m = m + q
x1=x1 + gx * cos(m)
y1=y1 + gy * sin(m)
x2 = (x1 + 150)/2 : y2 = (y1 + 300)/2
x3 = (x1 + x2) /2 : y3 = (y1 + y2) /2
x4 = (x2 + 150)/2 : y4 = (y2 + 300)/2
x5 = (x1 + x3) /2 : y5 = (y1 + y3) /2
x6 = (x2 + x3) /2 : y6 = (y2 + y3) /2
x7 = (x2 + x4) /2 : y7 = (y2 + y4) /2
x8 = (x4 + 150)/2 : y8 = (y4 + 300)/2
fcolor 255,0,0    : line x1,y1,x5,y5  
fcolor 255,102,0  : line x5,y5,x3,y3    
fcolor 255,255,0  : line x3,y3,x6,y6   
fcolor 0,255,0    : line x6,y6,x2,y2   
fcolor 0,0,255    : line x2,y2,x7,y7   
fcolor 0, 0, 128  : line x7,y7,x4,y4    
fcolor 128,0,128  : line x4,y4,x8,y8   
s=s+1 
swap
Wend
