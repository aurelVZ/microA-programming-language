'create input box ( edit control used for input text)
ptr hbox ,hImg,hb
ptr wmKeyDown, wmCommand
str sText, cStr
var wp, tx ,ty
'LoadImage(0, strRes, imgType, imgW, imgH, cFlag)
LoadImg hImg,"microgirls.bmp"  ,0, 264,236, 24
wcolor 200,190,200 : swap
cStr = "test text"
'syntax INPUTBOX handle , x,y,w,h,text
ShowImgT hImg,400,80,264,236 :swap
INPUTBOX hbox , 10, 350, 300, 23 , "micro(A)"
print 10,10,"Testing IDOK event under WM_COMMAND message in micro(A) v10"
GETTEXT hbox , sText
print  10,400, sText : swap
ty = 50

'events.................
WinMsg wmCOMMAND
'in this case hWparam is LoWord(wParam) -> control ID
hWparam wp 

'if is -> IDOK / which is 1
if wp = 1
   tx = 10 : ty = ty + 20
   get_text()
   print tx,ty,sText 
   swap
endif

EndWm
'..................


func get_text()
    GETTEXT hbox, sText
   ' rect 10,400,100,23
   ' fcolor 200,230,250 : print  10,400, sText : swap
  
endfn
