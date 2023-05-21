'primitive game in microA with Johnno help 
'collision not work properly!
var r,g,b , mx , my, ax,ay, wp ,p,score, game
var bf, bx, by ,bs, ex,ey,hit,eh,ev
ptr wmKeyDown, wmTimer
 ay = 175 : ax = 120 : ex = 5 : ey = 10
wcolor 0,0,0 : fcolor 140,180,200
print 20,410,"primitive game in micro(A)"
print 20,430,"move 'A' with LEFT<->RIGHT arrow keys"
print 20,450,"Shoot with SPACE bar"
print 20,470,"Pause with ESC key"
print 456,10,"player" : print 456,40,"bullet" : print 456,70,"enemy"
print 456,100,"score"
updateScreen() : fcolor 220,10,10 : print ax,ay,"A" 
hit = 0

'---------------------------------------------

WinMsg wmKEYDOWN

hWparam wp
'vkLEFT ?-----------------------------------
if wp = 37 
   if ax > 11 : ax = ax - 5 :endif 
  
endif

'vkRIGHT ?----------------------------------
if wp = 39 
   if ax < 229 : ax = ax + 5 : endif
  
endif

'vkSpace ?----------------------------------
if wp = 32
     if bf = 0       		
		bx = ax
		by = ay
         bf = 1
      endif 
endif

'game loop ---------------------------------
game = 1
while wp > 0
    fcolor 180,180,120 : rect 1,1,256,192
    
    updateScreen()
    updateBullet()
    updateEnemy()
    testCollision()
    updateScore()
    'delay loop
    p=0
    while p < 800
       p=p+0.1
    wend
    swap
game = game + 1
wend




EndWm


'--------------------------------------------------
func updateScreen()
	'update ax position
	fcolor 80,80,100 :rect 524,5,68,24   
	fcolor 100,160,220 : print 530,10,ax 

	'display player
    fcolor 100,210,230 : print ax,ay,"A"

    'Display bullet  
	if bf = 1 
		fcolor 255,255,0 : print bx, by,"^"
        'update by bullet position
	    fcolor 80,80,100 :rect 524,35,68,24  
		fcolor 235,218,100 : print 530,40,by
	endif
   
    'display enemy
     fcolor 100,150,100 : print ex,ey,"-o-"
     'update ex enemy position
	 fcolor 80,80,100 :rect 524,65,68,24  
	 fcolor 100,160,100 : print 530,70,ex
     'update score
     ' fcolor 80,80,100 :rect 524,95,68,24  
	 'fcolor 245,118,0 : print 530,100,score      

    swap
 
endfn
'----------------------------------------------------------------
func updateBullet()	
	if bf = 1 
        by = by - 5
        'bx = bx
	   'Bullet has left the screen. 
       if by < 1 : bf=0 : endif	
	endif
endfn
'----------------------------------------------------------------
func updateEnemy()
   if ex < 250 : ex=ex+5 : endif
   if ex > 240 : ex=5    : endif
   if ey > 100 : ey = 5  : endif
   eh=ex+10: ev=ey+10
   'fcolor 0,150,100 : print ex,ey,"-o-"
endfn
'------------------------------------------------------------
func testCollision()
	 
    if bx = ex & by = ey
       if bf ! 0
           hit = 1 : bf=0
           fcolor 220,100,100: print ex,ey,"-XX-" 
      endif
    else
        hit = 0
    endif

   if hit = 1
         score = score + 10
          hit = 0        
   endif

endfn
'---------------------------------------------------------------------
func updateScore()
    fcolor 80,80,100 :rect 524,95,68,24  
    fcolor 245,118,0 : print 530,100,score 
endfn




