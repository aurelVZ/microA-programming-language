'gdi 2d platformer demo
ptr img0,img1,img2,img3
ptr wmKeyDown
var wp,ix,iy,p,ex,ey,lx,ly,bx,by,cell, tmpx,tmpy,tmpCell
var tbx ,tby ,bushCell ,score
wcolor 0,0,0:swap
'syntax-> LoadImg (1)hImg , (3)str "img.bmp" ,(5)imgType , (7)w , (9)h, (11)colorFlags 

'load another image
'LoadImage(0, strRes, imgType, imgW, imgH, cFlag)
LoadImg img0,"grid.bmp"  ,0, 770,482, 24
'green blocks
LoadImg img1,"bush.bmp"  ,0, 32,32, 24
'print 10,200,img1
LoadImg img2,"player4.bmp",0, 32,32, 24
'print 10,250,img2
LoadImg img3,"alien.bmp",0, 32,32, 24
'print 10,300,img3
'ShowImgT img3,300, 300, 40, 40
info()
bx = 128 : by = bx + 32
updateBush()

ex = 300 : ey = 300

'call intro screen
'LoadCells()

'events...
WinMsg wmKEYDOWN

hWparam wp
'vkLEFT -----------------------------------
if wp = 37 
   if ix > 0 : ix = ix - 32 : endif
endif

'vkRIGHT ?----------------------------------
if wp = 39 
   if ix < 736 : ix = ix + 32 : endif
endif

'vkUP --------------------------------------
if wp = 38
     if iy > 0 : iy = iy - 32 :endif
endif 

'vkDOWN -------------------------------------- 
if wp = 40
    if iy < 420 : iy = iy + 32 :endif
endif

while wp ! 27 

    updateBack()  
    updatePlayer()
    updatePosition() 
    'updateBullet()
    'updateEnemy()
    'testCollision()
    'delay loop
   '  p=0
   ' while p < 800
    ' p=p+0.01
   'wend
swap

wend

EndWm

func updatePosition()
   fcolor 80,80,100    : rect 524,512,68,24   
   fcolor 100,160,220  : print 530,514,ix 
   fcolor 80,80,100    : rect 610,512,68,24
   fcolor 100,160,220  : print 612,514,iy
   'calculate cell position using sprite upper/left pixel pos
   tmpx = int((ix + 32) / 32)
   'tmpy = int((iy + 32) / 32)
   tmpy = int(iy/32) + 1
   'calc temp cell
   'tmpCell = tmpx + tmpy
   tmpCell = int(iy/32)*24 + int(ix/32) + 1 
   
   fcolor 180,100,50  : rect 306,512,68,24 : print 310,514, tmpx
   fcolor 180,100,50  : rect 406,512,68,24 : print 410,514, tmpy
   'show cell number
   fcolor 50,170,100  : rect 206,512,68,24 : print 210,514, tmpCell
   
  if tmpCell = bushCell
      score = score + 1
      fcolor 50,170,100  : rect 206,482,68,24 : print 210,484,score
      ix = ix + 32 : updatePlayer() ' move player one cell 

  endif   

endfn
'----------------------------------------
func updateBack()
 ShowImgT img0,0,0,770,482
updateBush()
endFn
'----------------------------------------
func updatePlayer()
  ShowImgT img2,ix,iy,32,32  
endFn
'-----------------------------------------
func updateEnemy()
   if ex < 600 : ex = ex + 1 : endif
   if ex = 598 : ex = 10 : endif
   fcolor 0,0,0 : rect 0,0,800,512 
   ShowImgT img3, ex, ey, 40, 40 
swap
endfn
'----------------------------------
func updateBush()
   ShowImgT img1,bx,by,32,32 
   'calculate bush position
     tbx = int((bx + 32) / 32)
     tby = int(by/32) + 1
     bushCell = int(by/32)*24 + int(bx/32) + 1 
endFn

'*********************************************
'***  I N T R O ******************************
'*********************************************
func info()
'clear screen 
fcolor 0,0,0 : rect 6,518,200,32 :

fcolor 200,180,100: print 10,520,"GDI Level by Aurel"

'swap
endfn

func LoadCells()  
    grid()
endFn

func grid()
'clear screen 
fcolor 0,0,0 : rect 0,0,800,512 :

'draw shadows
ly=0 
While ly < 480
      'draw by X
      lx=0
      While lx < 768      
         fcolor 60,80,60 : rect lx,ly,32,32
         cell = cell + 1 : fcolor 60,60,60: print lx,ly,cell : swap
         lx = lx + 32
      Wend 
ly = ly + 32
Wend
swap
endfn

