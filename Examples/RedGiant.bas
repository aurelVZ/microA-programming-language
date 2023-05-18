' Red giant in micro(A) by Aurel
var x,y,cx,cy,px,py,radius,ratio,startpos,i,rx,ry,t,s
wcolor 0,0,0 
t=3.14 : rx=400 : ry=400
'plot circle with lines
cx = 240 : cy = 240 : radius = 200
startpos = cx + radius
'look into start point small yellow circle
fcolor 200 ,220 ,0
circle startpos,cy,3
fcolor 200,160,100 : print 10,10," Red Giant in micro(A) by Aurel" : swap
fcolor 200,60,0

while t > 0
i=1
while i < 360
	ratio = i/360
	x = cos(ratio*6.281)
	y = sin(ratio*6.281)
	px = cx + x * radius
	py = cy + y * radius
    rx = px+rand(cx)  : ry = py+(radius/t) : s=rand(3)
	'CIRCLE rx,ry,3
    line cx,cy,px,py
swap
i=i+0.3 'set iterator from 0.1 to 1
wend

t=t-0.1
wend
