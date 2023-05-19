' test LoadImage in micro(A)
ptr img,img2
wcolor 200,200,210
fcolor 180,60,100 : print 110,10,"Test Load Bitmap Image into handler"
'syntax-> LoadImg (1)hImg , (3)str "img.bmp" ,(5)imgType , (7)w , (9)h, (11)colorFlags
LoadImg img,"spaceMoon.bmp" , 0, 646, 438,24
'print value of img handler  / if value not null -> OK!
'show img on window
ShowImgT img,0,0,646,438
print 510,40,img
'load another image 
LoadImg img2,"sputnikGirl.bmp" , 0, 200, 440,24
ShowImgT img2,0,0,200,440  
swap
