'test demo in gdi
ptr img,img2,img3,img4
ptr wmKeyDown, wmTimer 
var wp,ix,iy,p,ex,ey,eh,ev,bx,by,bf,hit ,turn ,hex,hey
var sc ,time gameLoop , keyleft, keyright ,keyup ,keydown
wcolor 200,200,210
fcolor 180,60,150 : print 10,510,"give banana to monkey"
LoadImg img,"beach.bmp",0,640,400,16 
'program name...
print 10,440,"Coconut Monkey m(A)": print 10,460,"Pressing ESC back to starting positions"
'show img on window
ShowImgT img,0,0,640,360 
'load another image 
LoadImg img2,"explorer1.bmp"  , 0, 32, 32,16
LoadImg img3,"monkey1.bmp"  , 0, 32, 32,24
LoadImg img4,"banana.bmp" , 0, 32, 32,16
ShowImgT img3,300, 300, 32, 32 
ex = 300 : ey = 30 : ix = 300 : iy = 360
updateScreen() : sc=0
'show score rect
fcolor 80,80,100 :rect 524,470,68,24  
fcolor 245,118,0 : print 530,475,sc


goto game_loop

'events...
WinMsg wmKEYDOWN


hWparam wp

'vkLEFT -----------------------------------
if wp = 37 
   keyleft = wp
endif

'vkRIGHT ?----------------------------------
if wp = 39
   keyright = wp 
endif

'vkUP --------------------------------------
if wp = 38
   keyup = wp
     'if iy > 0 : iy = iy - 5 :endif
endif 

'vkDOWN -------------------------------------- 
if wp = 40
   keydown = wp
    'if iy < 360 : iy = iy + 5 :endif
endif

'vkSPACE
if wp = 32
     if bf = 0 
        bf = 1		
		bx = ix
		by = iy
     endif
endif


'game loop if key not ESC
while wp ! 27

' powerful GOTO commad ..he he !
goto game_loop
'flip backbuffer
swap

wend


EndWm

'---------------------------------------------
label game_loop
'move left
if keyleft = 37
   if ix > 0 :ix = ix - 5 : endif
   keyleft = 0
endif
'move right
if keyright = 39
   if ix < 600 : ix = ix + 5 : endif 
   keyright = 0
endif
'move up
if keyup = 38
     if iy > 0 : iy = iy - 5 :endif
     keyup = 0
endif
'move down
if keydown = 40
    if iy < 360 : iy = iy + 5 :endif
   keydown = 0
endif

updateBack()
'updateScreen()
updateEnemy()
updateBullet() 
testCollision()
updateScreen()
if hit = 1 : updateScore() : endif

turn = turn + 0.1
print 10,10,turn
swap  

'for testing purpose i use variable -> turn
if turn < 10000 : goto game_loop : endif

'---------------------------------------------

func updateScreen()
   fcolor 80,80,100   : rect 524,415,68,24   
   fcolor 100,160,220 : print 530,420,ix 

   fcolor 80,80,100   : rect 524,440,68,24
   fcolor 100,160,220  : print 530,445,iy

   'Display bullet  
	if bf = 1  
	    ShowImgT img4, bx, by, 32, 32
    endif   

   'show enemy
   ShowImgT img3, ex, ey, 32, 32
   'show ship 
   ShowImgT img2,ix,iy,32,32

'update score
  'if hit = 1
    'fcolor 80,80,100 :rect 524,470,68,24 
    'fcolor 245,118,0 : print 530,475,sc
  'endif
   

endfn

func updateBack()
 ShowImgT img,0,0,640,400
endFn

func updateShip()
  ShowImgT img2,ix,iy,32,32   
endFn

func updateBullet()	
	if bf = 1 
        by = by - 1
	   'Bullet has left the screen. 
       if by < 0 : bf = 0 : endif	
	endif
endfn

func updateEnemy()
    eh = ex+5 
    ev = ey+5
   if ex = 595 : ex = 0 : endif
   if ex < 600 : ex = ex + 1 : endif
    
endfn

func testCollision()
    hit=0
     hex = ex+ 32
     hey = ey + 32 
    if hey < by 
    
         hit = 1
        
     'endif
    else
     hit=0
   endif

   if hit = 1      
      'fcolor 220,100,100
      'print ex,ey,"-XX-"
      sc=sc+1
      hit=0
   endif
         
endfn

func updateScore()
	fcolor 80,80,100 : rect 524,470,68,24  
    fcolor 245,118,0 : print 530,475,sc 
endfn


