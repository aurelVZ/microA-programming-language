'msx  Xmas tree by Murata from fb group
'version for micro(A) by Aurel
var c,x,u,y,w,z,v,turn,s
var nStars ,sx,sy
wcolor 0,0,0  : nStars = 10000
'101:forc=2to8:read r,g,b:color=(c,r,g,b):nextc
fcolor 160,180,230
c=0
while c < 10
 'for c=0 to 2 
    x=(5-c)*5
 line 127+x,2 , 127-x,29
c = c + 1
swap
wend

'for u=180 to 0 step-3
fcolor 40,160,60
'turn = 490
'while turn > 49
u = 490
while u > 0
v = u/2.3 : W =(140-u)/10: z=u/5

    'for x=0 to V step3:
    x=0
     while x < v
        y=w+u
        
       line 127-x, rnd(0.6)*z+y ,  127,y
       
       line 127+x , rnd(0.6)*z+y , 127,y
    'swap
    x = x + 7
    wend
swap
u = u - 7
wend

print 280,100,"MSX BASIC Christmas Tree by Murata"
fcolor 160,180,230: print 280,140,"micro(A) version by Aurel"
fcolor 230,200,150 : print 280,180,"Merry Christmas!"
swap

'stars
fcolor 100,150,200
s=1 
while s < nStars 
     sx = 270 + rand(640) 
     sy=80 + rand(480) 
     print sx,sy,"." 
     s=s+1 
     swap
     'rect 270,80,300,300
wend 
