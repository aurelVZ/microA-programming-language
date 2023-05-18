' simple ploting with pixels from specBAS
' micro(A) version by Aurel
var x,y,i,p,j,w,h,turn ,x1, y1, rc,gc,bc
 wcolor 60,0,0  : fcolor 220,200,0
w=640 : h=480 : p=50 :j=1

while turn < 70 

i=0 : rc = rand(250) : gc=rand(250) :fcolor rc, gc,0
p = rand(50)
while i < 1.75
  j= -j
  x = x1 + w/16+p*j*i
  y = y1 + h/16+p*(sqr(cos(i)) *cos(313*i)-sqr(i))  
  pset x,y

  i=i+0.0005

wend
swap
turn = turn + 1
x1 = rand(800): y1 = rand(600)
wend 

fcolor 230,220,200 : rect 5,5,350,45
print 10,10,"ploting hearts with pixels by Aurel" 
print 10,30," Thanks to PaulDunn on SpecBas version!":swap
