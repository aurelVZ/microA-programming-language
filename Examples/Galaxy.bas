'galaxy qb
var x,pi,px,py ,r: wcolor 0,0,0
pi = 3.14159
x=1
while x < 720
 px = SIN(x / 180 * pi) * RAND(185) + 320 : py = COS(x / 180 * pi) * RAND(73) + 240 
 fcolor 220,220,100: r=rand(5) : pset px,py 
 x=x+0.1
swap
wend
