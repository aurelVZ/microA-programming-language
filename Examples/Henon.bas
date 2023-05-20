' orbits of Henon from toy528
var a,sc,ox,oy,ly,lx,x,y,xx,n, ABS_LXLY ,px,py,red,green,blue
a= -10.1 : sc=175 : ox=400 : oy=240
wcolor 0,0,0 : fcolor 120,140,200 : print 10,10,"Orbits of Henon"

while a < 1
fcolor 0,0,0 :rect 0,0,800,600  'cls
fcolor 120,140,200 : print 10,10,"Orbits of Henon"

x = -0.1
while x < 0.8
     y = -0.1
     while y < 0.8 
         lx = x : ly = y
'---------------------------------------------------------		
          n=1
          while n < 40
			xx = lx*cos(a)-(ly-lx*lx)*sin(a)
			ly = lx*sin(a)+(ly-lx*lx)*cos(a)
			lx = xx
              ABS_LXLY = abs(lx+ly)
			If ABS_LXLY > 300 : n=500 : EndIf
              px = ly*sc+ox : py = lx*sc+oy 
              red=150+x : green=100+y : blue=200+x 
			fcolor red,green,blue : pset px,py
		n=n+1
         wend

     y=y+0.05
     wend

x=x+0.05
swap
 wend

a=a+0.5 'play with value 0.005 to 0.5 give inteesting shapes
wend
