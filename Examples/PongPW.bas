' pong/squash in o2 by Peter Wirbelauer 
' micro(A) version by Aurel
var x,y,x2,y2,pspeed, xadj,yadj,delay,score,p
var wp , key37, key39, key27
ptr wmKeyDown
wcolor 0,0,0, : fcolor 200, 200, 247 : rect 0,0,320,240 :swap
label start
x = 50
y = 50
x2 = 130
y2 = 160
pspeed = 4
xadj = 1
yadj = 1
delay = 1
score = 0

'process w_messages...
WinMsg wmKEYDOWN
'get wparam handler
hWparam wp
    'assign LEFT key to variable
     if wp = 37 : key37 = wp : endif
    'assign RIGHT key to variable
     if wp = 39 : key39 = wp : endif
     'assign ESC key
     if wp = 27 : key27 = wp : goto game_loop: endif
WHILE wp ! 27 
   key27 = 0
      
   goto game_loop
WEND

EndWm
 
label game_loop
   
 fcolor 0, 0, 55: rect 98,198,100,24
  'draw box
  fcolor 255, 255, 0 : rect 20, 20, 280, 160 
  'swap
  IF y < 24   : yadj = 1   :  ENDIF
  IF y > 176 : yadj = -1  :  ENDIF
  IF x > 296  : xadj = -1  :  ENDIF
  IF x < 24   : xadj = 1   :  ENDIF
 'draw ball
  fcolor 0,200,250 : Circle x, y, 8 
  'move pad  left/right
  IF key37 = wp & x2 > 18   :  x2 = x2 - pspeed : key37 = 0 : endif
  IF key39 = wp & x2 < 270  :  x2 = x2 + pspeed : key39 = 0 : endif
  'draw pad
  fcolor 255,255,255 : rect x2, y2, 30, 4
  x = x + xadj
  y = y + yadj
  'check touch
  IF y > y2 - 7 & y2 < y2 + 2 & x < x2 + 30 & x > x2 
    yadj = -1
    score = score + 1
    Fcolor 200,180,0 : rect 0,0,100,20: Print 10, 2, "SCORE:" : Print 80,2, score
  ENDIF

  IF y > y2 + 10      
     fcolor 0, 160, 55: print 100, 200, "GAME OVER!"
     while key27 = 0 : swap : wend
    score = 0
    Fcolor 200,180,0 : rect 0,0,100,20: Print 10, 2, "SCORE:" : Print 80,2, score
    x = 50
    y = 50
    x2 = 130
    y2 = 150
    goto game_loop
  ENDIF

  swap
fColor 200, 200, 247 :  rect 20, 20, 280, 160
 pause()
'WEND
goto game_loop

'----------------------------------
func pause()
  p=0
    while p < 150
     p=p+0.1
    wend
endfn


