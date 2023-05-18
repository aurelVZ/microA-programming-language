' binary_tree SmallBASIC 0.12.6 [B+=MGA] 2016-05-20
' weird_tree.bas from TOY524 by EdDavis
' micro(A) version by Aurel 
var i,xmax,ymax,xlength,p2,ystart,xstart
var th,xhozstart,yheight,x,repeat,tmpy,tmpx
xmax=640: ymax=480
wcolor 0,0,0
i=1
while i < ymax
fcolor 0,80,150 
  line 0, i, xmax, i 
i = i + 1
'swap
wend

xlength = xmax
fcolor 220,200,0:print 10,10,xlength : print 100,10,"TOY Quadratic Tree"
p2 = 2
ystart = ymax
yheight = ymax  '<< important addition

'repeat <<< same loop
while yheight > 1 | xlength > 1   'also here 
fcolor 220,200,0 : print 100,400,"while loop"

  xstart = xmax / p2 
  yheight = (ymax - 150) / p2   
  xlength = xlength / 2
  th = 0.2 * yheight
  fcolor 0,80,150 : rect 8,35,100,24 
   swap

  'for x = xstart to xmax-0.5 step xlength*2
  x=xstart : xmax = xmax-0.5    
	while x < xmax
        fcolor 0,80,150 : rect 8,55,100,24
		fcolor 220,200,0 
		'rect x, ystart, x, xlength
		tmpy = ystart - yheight
		line x, ystart, x, tmpy 
        x = x + xlength*2
	wend 

  ystart = ystart-(ymax-150)/ p2 
  xhozstart = xstart / 2

 ' for x = xhozstart to xmax-0.5 step xlength*2
  x = xhozstart :  xmax = xmax-0.5
  while x < xmax
    fcolor  240,0,0
    'rect x, ystart, xlength, ystart
      tmpx = x + xlength
      line x, ystart, tmpx, ystart 
      x = x + xlength*2
  wend

  p2 = p2*2   
'until xlength / 2 < 1 or yheight / 2 < 1
wend

fcolor 220,200,0 : print 100,400,"end " : swap
