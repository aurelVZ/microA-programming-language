' guess my number ? micro(A)
ptr hbox ,hImg,hb
ptr wmKeyDown, wmCommand, wp
str sText, cStr , resText
var  keyN ,tx ,ty ,turn ,newGame , randNumber , result
'LoadImage(0, strRes, imgType, imgW, imgH, cFlag)
LoadImg hImg,"crazyNumbers.bmp"  ,0, 264,236, 24
wcolor 200,190,200 : swap
cStr = "test text"
'syntax INPUTBOX handle , x,y,w,h,text
ShowImgT hImg,400,80,264,236 :swap
INPUTBOX hbox , 10, 350, 300, 23 , "enter number (1-10)"
print 10,10,"GUESS THE NUMBER ...in micro(A) v10"
print 10,40,"press key N for NEW GAME!"
GETTEXT hbox , sText
print 10,400, sText : swap
ty = 50
print 400,40,"NEW GAME":swap
fcolor 220,200,150 : rect 470,38,30,24 : print 480,40,newGame : swap
'events.................
WinMsg wmCOMMAND
'in this case hWparam is LoWord(wParam) -> control ID
hWparam wp 

'if is -> IDOK / which is 1
if newGame = 1
if wp = 1
   tx = 10 : ty = ty + 20
   get_text()
   get_result()
   fcolor 0,0,0 : print tx,ty,result : print (tx + 40) ,ty , resText
   swap
   'check if turn > 3 then reset game
   if turn = 4 : newGame = 0 : SETTEXT hbox,"END": setfocus 0 :setfocus hbox: endif
endif
endif

EndWm
'..................
WinMsg wmKeyDown

hWparam keyN 
'vkN -> 78
if keyN = 78
   if newGame = 0 
      newGame = 1
      'set random number 
      randNumber = RAND(10)
      'show rand number
      fcolor 120,150,120 : rect 8,428,30,24 : print 14,430,randNumber :swap
      'set turn to 1
      turn = 1
     fcolor 220,200,150 : rect 470,38,30,24 : print 480,40,newGame : swap 
     'print 480,40 ,turn :swa
   endif
endif

EndWm

func get_text()
    GETTEXT hbox, sText  
endfn

func get_result()
     result = VAL(sText)
     'test typed number
     print 50,430, result
     '1.
     if result > randNumber 
        resText = "result is larger than number!"  
     endif
     '2.
     if result < randNumber 
        resText = "result is lower than number!"  
     endif
     '3.
     if result = randNumber 
        resText = "BINGO..you guess the number!"  
     endif
 

     turn = turn + 1
endfn



