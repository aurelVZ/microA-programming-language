' Lorenz example in micro(A)
var x,y,z,count,xx,yy,zz,x1,y1,cr,cg,cb
x=0 : y=40 : z=40 : count=0
wcolor 0,0,0 : fcolor 140,120,100
label start

xx = x + 0.01 * (-10.0 * x + 10.0 * y)
yy = y + 0.01 * ( 28.0 * x - y - x * z)
zz = z + 0.01 * (-8.0  * z / 3.0  + x * y)
  

x1 = x*10+300
y1 = -(z)*10+550
cr= 100 + rand(100) : cg = 100 + rand(100) : cb = 255
fcolor cr,cg,cb
rect  x1,y1 ,2,2

x = xx
y = yy
z = zz
count = count + 2
swap

if count < 10000
  goto start
endif
swap
fcolor 100,160,150 : print 10,10,"Lorenz Attractor in micro(A)":swap
