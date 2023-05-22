'bubble catcher / demo
var HX, HY, i, hits, score, s,sx,sy
var nStars,wp : nStars = 150
var ex1,ex2
var ey1,ey2
HX = 320 : HY = 400 ' hero stuff (you)
ex1 = 20 + Rand(600) : ey1=10
'init wm_KeyDown
ptr wmKeyDown
wcolor 0,0,0 : fcolor 100,150,200 
print 10,510,"Bubble catcher in micro(A)..unfinished?":swap
'stars
i=1
while i < nStars
   sx = rand(640) : sy=rand(480)
   pset sx,sy
   i=i+1
wend 
swap

WinMsg wmKEYDOWN

hWparam wp
    'vkLEFT key 
     if wp = 37 : if hx > 10  : hx = hx - 10 : endif :  endif

    'vkRIGHT key
     if wp = 39 : if hx < 600 : hx = hx + 10 : endif : endif

goto DoLoop 

EndWm

Label DoLoop
'cls
fcolor 0,0,0 : rect 0,0,640,480
'stars
moveStars()
'move quad
moveQuad()
'move bubbles
moveBubbles()


swap
goto DoLoop
'--------------------------------------------
func moveQuad()
	fcolor 220,220,100 : rect hx,hy,20,20 
endfn
'--------------------------------------------
func moveStars()
    'stars
    fcolor 100,150,200
    s=1 : while s < nStars :sx = rand(640) : sy=rand(480) :print sx,sy,"." : s=s+1 :wend 
endfn
'---------------------------------------------
func moveBubbles()
   'move bubbles
   ey1 = ey1 + 1 : if ey1 > 470 : ey1=10: ex1=20 + Rand(600): endif
   fcolor 100,150,100: circle ex1,ey1,10
endfn
