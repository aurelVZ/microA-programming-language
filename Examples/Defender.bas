' Defender in micro(A) by Aurel based on CraftBasic example
ptr img1,img2                           ' image handlers
ptr wmKeyDown, wmTimer                  ' message handlers
var rightkey, leftkey, spacekey , esckey,score ,wp, pause, level,key
var apics , npics ,r, playerx ,playery,bullet, bulletx, bullety ,a,b,x,y
wcolor 0,0,100 : fcolor 230,200,160
'game frame...
rect 0,0,512,512
'load images...
LoadImg img1,"playerT.bmp",0,32,32,16
LoadImg img2,"alien1.bmp",0,32,32,16

apics = 8 : level = 1
'create alien arrays
var alienx[apics]
var alieny[apics]


'player origin position...
playerx=256 : playery=448 : score=0

bullet=0 : bulletx=0 :bullety=0
rightkey = 39 : leftkey = 37    ' arrow keys
spacekey = 32 : esckey = 27
'....................................................
label create_alien_pics

 'random X pos -> 400
 alienx[npics] = 1.5 + rand(400)

'random Y pos -> 100
 alieny[npics] = rand(100)

 npics = npics + 1

If npics < apics : Goto create_alien_pics : EndIf
'................................................
fcolor 220,220,200 : wcolor 0,0,150
rect 0,0,330,290 : swap

print 530,10, "DEFENDER by Aurel"
print 530,30, "in micro(A) BASIC "
print 530,50, "Use arrow keys to move"
print 530,70, "SPACE to shoot, and ESC to quit."
showimgT img1,playerx,playery,20,20 :swap
swap : esckey = 0 :Goto loop

'events................................................
WINMSG wmKEYDOWN

hWparam wp
'push keydown message to key variables
'vkLEFT 37 ---------------------------------
If wp = 37 
     leftkey = wp
     wp=0   
EndIf

'vkRIGHT 39 -------------------------------
If wp = 39
    rightkey = wp 
    wp=0  
EndIf

'vkSPACE
If wp = 32 '& bullet = 0
    spacekey = wp
EndIf

'if wp = 27 : esckey = wp :goto loop: endif

'test ESC key
While wp ! 27 
   'esckey = 0
   Goto start
  ' esckey = 0
Wend

ENDWM
'>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
label loop
'>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
label start
'bullet = 0
 If leftkey = 37
    If playerx > 10 :playerx=playerx-4 : EndIf
    leftkey = 0
 EndIf

 If rightkey = 39    
    If playerx < 500 : playerx=playerx+4  : EndIf
    rightkey = 0
 EndIf


If spacekey = 32 
   'bullet = 0
      bullet=1 
      bulletx=playerx+9
      bullety=playery  
   spacekey = 0
  ' bullet=0
EndIf

If bullet = 1 

   fcolor 0,0,255
   x=bulletx
   y=bullety+5
   'line bulletx,bullety,x,y

   fcolor 255,0,0
   bullety=bullety-5

   If bullety < 30
      bullet=0
   EndIf

endif
 
   If bullety > 0
      x=bulletx
      y=bullety+5
      line bulletx,bullety,x,y
   EndIf 

   

npics = 1 ' first array index must be 1
'--------------- 
 label move_pics
'---------------
 

If bullet = 1

     If  bulletx > alienx[npics]-30  & bulletx < alienx[npics]+30  &  bullety < alieny[npics]+30 
     '(bulletx>=npcx[npc])&(bulletx<=(npcx[npc]+20))&(bullety<(npcy[npc]+20))
         fcolor 100,200,255

         a=bulletx
         b=bullety+5
         line bulletx,bullety,a,b 

         x = alienx[npics]
         y = alieny[npics]
         fcolor 0,0,0 : rect x,y,32,32 
      ' showimgT img2,x,y,20,20 
 
         score=score+1
         bullet=0
				 
         'npics = npics - 1
         alienx[npics] = rand(400)
         alieny[npics] = 1

    EndIf

 EndIf
'------------------------------------
r = rnd(1)  ' decimal random 0 to 1
r = r*0.2
r = Round(r)

If r = 0

    fcolor 0,0,250
    x = alienx[npics]
    y = alieny[npics]
     
    alieny[npics] = alieny[npics] + 0.1
    y = alieny[npics]
   ' showimgT img2,x,y,20,20
  showEnemy() 
   'showShip()
 
    if y > playery
      cls() : goto gameover
    endif

endif
'-------------------------------------
npics = npics + 1
'if npc > 10 : goto gameover : endif
if npics < apics : goto move_pics : endif
'-------------------------------------
 fcolor 255,255,0
 print 10,10,"Score: "
 print 80,10,score
 
'...............................


showShip()

flip()
'fnPause()
cls()

' back to label loop <<<<<<<<<<<<<<<<<<<<<<<<<
if esckey = 0 : goto loop : endif
'<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

func fnPause()
   pause=0
while pause < 150 : pause = pause + 0.1 : wend
endfn
'--------------------------------------------
func showShip()
    showimgT img1,playerx,playery,32,32 
endfn
'------------------------------------------
func showEnemy()
    if level = 1 : showimgT img2,x,y,32,32 : endif


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
'...........................

label gameover
 print 100,100, "G A M E   O V E R !": swap
