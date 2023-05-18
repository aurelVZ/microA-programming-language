' windows messages test - mousePosition
' micro(A) by Aurel
var r,g,b , mx , my, cx,cy, wp ,tmp ,px,py
ptr wmMouseMove ,wmKeyDown ,wmTimer
r = 0 : g = 0 : b = 0 : cy = 200 : cx = 300
update()

'timer message NOT WORK without startTimer/EndTimer not implemented!
'WinMsg wmTIMER
   
'fcolor 230,240,130 : print 10,40,mx : print 10,60,my
'update()
'EndWm
  
WinMsg wmMOUSEMOVE
  mousex mx
  mousey my

  update()
  showMousePos()
  swap
EndWm


func update()
  fcolor 0,0,0 : rect 0,0,800,600  
  fcolor 100,200,240 : print 10,10,"Mouse position ...move mouse pointer over window!" 
  fcolor 230,240,130 : print 10,40,mx : print 10,60,my
endfn

func showMousePos()
   px = mx + 40 : py = my + 20
   fcolor 220,220,100 : pset mx,my 
   fcolor 255,255,255 : print px,my,mx : print px,py,my 
endfn
