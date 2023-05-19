' mandelbrot_test - micro(A)
var px, py, i, sx, sy, xx, xy,cr,cg,cb
var vy, pyy , w , h , hh , x, y , max      
max=15 : w = 640 : h = 480 
py=0 : px=0 : wcolor 0,0,0 

while py < h
px=0
  while px < 480
      sy = (py-240)/150 
      sx = (px-320)/150     
i = 0 : x=0 : y=0 
xy = x*x + y*y
while i < max & xy < 4  
        xx = x*x - y*y + sx + 0.1
        y = 2 * x * y + sy
        x = xx 
       cr=220+(i*x): cg=220+(i*y): cb=230+(i*xy)
       fcolor cr,cg,cb 
       print px,py,"." 
 i=i+1 
wend
  print px,py,"."
    px = px + 4
wend
swap
py = py + 4
wend
