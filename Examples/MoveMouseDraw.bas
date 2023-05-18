'windows messages test - move mouse Draw 
var r,g,b , mx , my, cx,cy, wp ,tmp
ptr wmMouseMove ,wmKeyDown
r = 255 : g = 255 : B = 255 : cy = 200 : cx = 300
wcolor r,g,b : fcolor 40,80,100
print 100,10,"testing WM_MOUSEMOVE and WM_KEYDOWN in micro(A)"
print 6,10,"mx"
print 6,40,"my"
fcolor 220,10,10 : print cx,cy,"A"

WinMsg wmMOUSEMOVE
   mousex mx
   mousey my
   fcolor 0,0,0 :rect 24,5,68,24   
   fcolor 100,160,220 : print 30,10,mx 
   fcolor 0,0,0 :rect 24,35,68,24   
   fcolor 100,160,220 : print 30,40,my
   fcolor 30,170,100 : circle mx,my,3
   swap
EndWm
