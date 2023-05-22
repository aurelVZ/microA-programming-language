'feingebaum example in micro(A)
var r,dr,x,i,px,py,scrw,s2
str title
x=0.5: r=2.4 : scrw=700 : s2= 1/scrw
wcolor 0,0,0
fcolor 220,200,100

label start
x=r*x*(1-x) 
px = ((r-2.4)/1.6)*scrw : py = (1-x)*scrw
pset px,py

r = r + 0.0009
pset px,py 


if r < 4
'coment or uncoment next instrction
swap
  goto start
endif
title = "feingebaum in micro(A)"
print 10,10,title :swap
