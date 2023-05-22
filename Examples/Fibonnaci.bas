' fibonacci series in micro(A)
var a, b, s, i ,n ,x ,y,r
str fbs,noe
fbs="fibonacci sequence in micro(A)"
wcolor 0,0,0 : fcolor 220,180,100
noe = "number of elements ->"
print 380,10,fbs
fcolor 80,140,120
print 380,30,noe
fcolor 100,200,200
a = 1
b = 1
n = 20 
y = 50

label start
s = a + b
print 500,y,s
y = y + 20
a = b
b = s
i = i + 1
r=s/3.14
circle y,s,r : circle n,s,r : swap

if i < 23 
   goto start
endif
