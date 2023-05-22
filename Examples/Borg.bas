' Borg attack in micro(A) by Aurel /demo
ptr img1,img2                 ' image handlers
ptr wmKeyDown                 ' message handlers
var rightkey, leftkey, spacekey , esckey, score ,wp, pause, level, key, fire, run
var deltaX ,deltaY,bullet, bulletX, bulletY, borg ,borgX, borgY, x,y
var borgX2,borgY2,borgX3,borgY3
wcolor 0,0,100 : fcolor 230,200,160
'game frame...
rect 0,0,512,512
'load images...
LoadImg img1,"deltaf.bmp",0,32,32,16
LoadImg img2,"sphere.bmp",0,32,32,16

borg = 8 : level = 1
'create alien arrays
var alien[8]

'player origin position...
deltaX=512/2 : deltaY=512-64 : score=0

bullet=0 : bulletx=0 :bullety=0
rightkey = 39 : leftkey = 37    ' arrow keys
spacekey = 32 : esckey = 27
'....................................................
'init borg position...
setBorg()
'................................................
fcolor 220,220,200 : wcolor 0,0,150
rect 520,0,200,290 : swap
fcolor 120,200,150
print 530,10, "BORG ATTACK by Aurel"
print 530,30, "in micro(A) BASIC "
fcolor 180,210,240 : print 530,50, "[ARROWS <-->] to move"
fcolor 180,210,140 : print 530,70, "[SPACE] to fire"
fcolor 230,210,180 : print 530,90, "[R] to run"
rect 0,0,512,512
'show delta flyer...................
showimgT img1, deltaX, deltaY, 32, 32 : swap
esckey = 0 : run = 0

'events................................................
WINMSG wmKEYDOWN

hWparam wp
'push keydown message to key variables
'vkLEFT 37 ---------------------------------
If wp = 37 
     leftkey = wp
      if run = 1 : goto mainloop : endif
EndIf

'vkRIGHT 39 -------------------------------
If wp = 39
    rightkey = wp 
    if run = 1 : goto mainloop : endif  
EndIf

'vkSPACE
If wp = 32 '& bullet = 0
    spacekey = wp
    if run = 1 : goto mainloop : endif
EndIf

'vk_R -> RUN
if wp = 82 
    if run = 0 : run = 1 :  goto mainloop: endif
endif

'test ESC key
While wp ! 27 
   'wait...
Wend

if wp = 27 : run = 0 : endif

if wp ! 27 : goto start : endif

ENDWM
'>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
label mainloop
'>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 
label start
fcolor 220,220,200 :  print 10,10 ,y 

 If leftkey = 37
    If deltaX > 4 : deltaX = deltaX - 4 : EndIf
    leftkey = 0
 EndIf

 If rightkey = 39    
    If deltaX < 480 : deltaX = deltaX + 4  : EndIf
    rightkey = 0
 EndIf


 If spacekey = 32 
   bullet = 1 
   spacekey = 0
  ' bullet=0
 EndIf

'move enemy --------------------------
'0y = y + 1 : ' borgY = y * 0.1
if y = 480 : y = 0   : endif
if borgY < 480  : borgY  = borgY + 0.2  : else : borgY = y           : endif
if borgY2 < 480 : borgY2 = borgY2 + 0.2 : else : borgY2 = y + (32*4) : endif
if borgY3 < 480 : borgY3 = borgY3 + 0.2 : else : borgY3 = y + (32*2) : endif

'------------------------------------     
 showEnemy() 
'------------------------------------
 showPlayer()
'------------------------------------
 flip()
 'fnPause()--------------------------
cls()


' back to mainloop <<<<<<<<<<<<<<<<<<<<<<<<<
if run = 1 : goto mainloop : endif
'<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

func fnPause()
   pause=0
   while pause < 150 : pause = pause + 0.1 : wend
endfn
'--------------------------------------------
func showPlayer()
    showimgT img1, deltaX, deltaY, 32, 32  
endfn
'------------------------------------------
func showEnemy()
    if level = 1  
        if alien[1] = 1 : showimgT img2, borgX , borgY, 32, 32   : endif
        if alien[2] = 1 : showimgT img2, borgX2, borgY2, 32, 32 : endif
        if alien[3] = 1 : showimgT img2, borgX3, borgY3, 32, 32 : endif 
    endif
endfn
'...........................
func flip()
    swap
endfn
'...........................
func cls()
     'clear area
     rect 0,0,512,512
endfn
'--------------------------------------------------
func setBorg()
     if level = 1
        alien[1] = 1 : borgX  = 32 * 4 : borgY  = 32 * 2 
        alien[2] = 1 : borgX2 = 32 * 6 : borgY2 = 32 * 4
        alien[3] = 1 : borgX3 = 32 * 8 : borgY3 = 32 * 2
     endif
endfn
'-------------------------------------------------

label gameover
 print 100,100, "G A M E   O V E R !": swap
