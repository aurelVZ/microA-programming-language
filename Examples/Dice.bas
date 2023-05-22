'Dice in micro(A) v10
wcolor 0,0,0 : fcolor 180,220,180
print 10, 10," ROLL DICE micro(A) v 10" : swap
print 10, 40," press key [ R ] to roll dice !" : swap
ptr wmKeyDown
var wp ,cx,cy,cw,ch,ci ,roll, result, turn, cscore, pscore ,pause ,Rkey
roll = 0 : wp=0 : rkey = 82
fcolor 150,190,250 : print 10,364,"COMPUTER:" : swap
fcolor 250,190,150 : print 10,404,"PLAYER:"   : swap
redrawDice()

'simulate  >> WAIT << with Goto Exit
Goto Exit

'events....................................
WinMsg wmKEYDOWN

hWparam wp

'vk_R ...ROLL DICE !
If  wp = 82
    if roll = 1  : playerTurn()   : Goto Exit : endif
    if roll = 0  : computerTurn() : Goto Exit : endif 
EndIf

ENDWM
'.........................................

func computerTurn()
    'computer turn
        result = rand(6)
        if result = 0 :result = 1 : endif
        cscore = cscore + result 
        update_cscore()
        redrawDice()
        if result = 1 : drawOne()   : endif
        if result = 2 : drawTwo()   : endif
        if result = 3 : drawThree() : endif
        if result = 4 : drawFour()  : endif
        if result = 5 : drawFive()  : endif
        if result = 6 : drawSix()   : endif
        result = 0
        roll = 1 : fnPause()
    
endfn

func playerTurn()

     'player turn
        result = rand(6)
        if result = 0 :result = 1 : endif
        pscore = pscore + result 
        update_pscore()
        redrawDice()
        if result = 1 : drawOne()   : endif
        if result = 2 : drawTwo()   : endif
        if result = 3 : drawThree() : endif
        if result = 4 : drawFour()  : endif
        if result = 5 : drawFive()  : endif
        if result = 6 : drawSix()   : endif
        result = 0
        roll = 0 : fnPause()
     
endfn

func fnPause()
   pause=0
while pause < 550 : pause = pause + 0.1 : wend
endfn

'---------------------------------------------
func redrawDice()
    'cube init and redraw
     cx = 100 : cy = 100 : cw = 200 : ch = 200
     ci = 2
     while cx < 200
       fcolor 250,250,200
       rect cx, cy, cw ,ch : swap
       cx = cx + ci : cy = cy + ci : cw = cw - ci - 2 : ch = ch - ci - 2
      wend
endfn
'--------------------------------------
func update_cscore()
    'draw computer score
     fcolor 200,220,240 : rect 90,360,80,24
     print 100,364,cscore
     'clear pointer arrow 
     rect 200,360,40,24  : print 204,364,"   "
     fcolor 250,220,140  : rect 200,400,40,24 : print 204,404,"<--"
swap
endfn
'--------------------------------------
func update_pscore()
    'draw player score
     fcolor 250,220,140 : rect 90,400,80,24
     print 100,404,pscore 
     rect 200,400,40,24 : print 204,404,"   "
     fcolor 200,220,240 : rect 200,360,40,24 : print 204,364,"<--"

swap
endfn

'--------------------------------------
func drawOne()
     fcolor 150,180,200
     Circle 200,200,10 : swap
endfn

func drawTwo()
     fcolor 150,180,200
     Circle 150,150,10
     Circle 250,250,10 : swap
endfn

func drawThree()
     fcolor 150,180,200
     Circle 150,150,10  'ul
     Circle 200,200,10  'center
     Circle 250,250,10  'lr
     swap
endfn

func drawFour()
     fcolor 150,180,200
     Circle 150,150,10
     Circle 250,250,10 
     Circle 150,250,10
     Circle 250,150,10
     swap
endfn

func drawFive()
     fcolor 150,180,200
     Circle 150,150,10
     Circle 250,250,10 
     Circle 150,250,10
     Circle 250,150,10
     Circle 200,200,10
     swap
endfn

func drawSix()
     fcolor 150,180,200
     Circle 150,150,10
     Circle 250,250,10 
     Circle 150,250,10
     Circle 250,150,10
     Circle 250,200,10
     Circle 150,200,10
     swap
endfn

Label Exit

