'draw strange smiley in micro(A) by Aurel
wcolor 0,0,0 : var x,cx,cy,r
fcolor 255,255,0 : bcolor 60,60,60 :swap
print 5,5,"Smiley in micro(A)"
cx=220:cy=220
fcolor 255,255,0
r=200
while r > 10
circle 220,220,r
r=r-2
wend

circle 140,150,30
circle 290,150,30
x=120 : fcolor 0,0,0
while x < 310 
   circle x,310,20
x=x+2
wend
print 100,430,"micro(A) by Aurel"
swap
