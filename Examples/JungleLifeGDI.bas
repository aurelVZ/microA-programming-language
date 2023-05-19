'test demo in gdi
ptr img,img2,img3
ptr wmKeyDown, wmTimer
var wp,ix,iy,p,ex,ey
wcolor 200,200,210
fcolor 180,60,100 : print 110,10,"Test Load Bitmap Image into handler"
'syntax-> LoadImg (1)hImg , (3)str "img.bmp" ,(5)imgType , (7)w , (9)h, (11)colorFlags
LoadImg img,"Jungle.bmp" , 0, 640, 360,16 
'print value of img handler  / if value not null -> OK!
print 10,440,"Jungle Life m(A)" 
print 10,460,"Move ship with arrow keys..."
'show img on window
ShowImgT img,0,0,640,360 
'load another image 
LoadImg img2,"craft2.bmp" , 0, 116, 48,16
LoadImg img3,"satelite2.bmp" , 0, 40, 40,24
ShowImgT img3,300, 300, 40, 40 
ex = 300 : ey = 300
updateScreen()

'events...
WinMsg wmKEYDOWN

hWparam wp
'vkLEFT -----------------------------------
if wp = 37 
   if ix > 0 : ix = ix - 6 :endif
endif

'vkRIGHT ?----------------------------------
if wp = 39 
   if ix < 500 : ix = ix + 6 : endif
endif

'vkUP --------------------------------------
if wp = 38
     if iy > 0 : iy = iy - 6 :endif
endif 

'vkDOWN -------------------------------------- 
if wp = 40
    if iy < 420 : iy = iy + 6 :endif
endif

while wp ! 27 
 
 updateBack() 
  updateScreen()  
   updateShip()  
    
    'updateBullet()
    updateEnemy()
    'testCollision()
    'delay loop
   '  p=0
   ' while p < 800
    ' p=p+0.01
   'wend
swap
'ShowImg img,0,0,646,438 
wend
if wp = 27 : swap: endif

EndWm

func updateScreen()
   fcolor 80,80,100   : rect 524,5,68,24   
   fcolor 100,160,220 : print 530,10,ix 
   fcolor 80,80,100   : rect 524,34,68,24
   fcolor 100,160,220  : print 530,38,iy
ShowImgT img3, ex, ey, 40, 40 
ShowImgT img2,ix,iy,116,48 
endfn

func updateBack()
 ShowImgT img,0,0,640,360
endFn

func updateShip()
  ShowImgT img2,ix,iy,116,48   
endFn

func updateEnemy()
   if ex < 600 : ex = ex + 1 : endif
   if ex = 598 : ex = 10 : endif
endfn

