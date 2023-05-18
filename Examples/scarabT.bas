' scarab by (B+=MGA) 2017 
' micro(A) version by Aurel
var j,c,x,y,f,x1,p,g,z
j=3.14 : z=1
wcolor 160,60,40 : fcolor 200,200,220 
print 5,5,"scarab drawing,please wait..." : swap

'for j = 3.14 to 6.28 step .0314

while j < 6.28
  'wcolor 160,60,40 
  x = 300 : x1 = x : y = 200 : f = 0
  while z < 30000
    f = f + j   : g = f * f
    x = x + cos(g) : x1 = x1 - cos(g)
    y = y + sin(g) : p = 190
    fcolor p,p,p : pset x, y
    fcolor p,p,p : pset x1,y
   
   z=z+2 
    wend
j = j + 10

wend
swap
