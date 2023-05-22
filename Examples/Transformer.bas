'Transformer Calculator in micro(A) by Aurel,(c)AurelSoft
var mx, my, wp, pvolt, pturns, svolt, sturns, tpv ,trlen
ptr wmKeyDown
var leftkey, rightkey ,upkey, downkey
tpv = 1 : trlen = 200
wcolor 40,60,120 fcolor 140,180,200
print 5,310,"PRIMARY(turns)" : print 5,350,"VOLTAGE  ( V )"
print 300,312,"SECONDARY(turns)" : print 300,350,"VOLTAGE  ( V )" : print 250,400,"TURNS PER VOLTAGE (T)"

fcolor 220,180,150 : print 5,290,"Transformer Calculator micro(A)"
DisplayUpdate()
Info()
DrawTrafo()

WinMsg wmKEYDOWN

hWparam wp
'vkLEFT ? primary(-)
if wp = 37
   pvolt = pvolt - 1  : pturns = pvolt * tpv
   DisplayUpdate() 
endif

'vkRIGHT ? primary(+)
if wp = 39
    pvolt = pvolt + 1  : pturns = pvolt * tpv
    DisplayUpdate() 
endif

'vkUP ? secondary(+)
if wp = 38
    svolt = svolt + 1  : sturns = svolt * tpv
    DisplayUpdate() 
endif

'vkDOWN secondary(-)
if wp = 40
    svolt = svolt - 1  : sturns = svolt * tpv
    DisplayUpdate() 
endif

'vk PAGE UP turns per voltage (+)
if wp = 33
   tpv = tpv + 1 : pturns = pvolt * tpv : sturns = svolt * tpv : DisplayUpdate()
endif

'vk PAGE DOWN turns per voltage (-)
if wp = 34
   tpv = tpv - 1 : pturns = pvolt * tpv : sturns = svolt * tpv : DisplayUpdate() 
endif

While wp ! 27 
   'wait...
Wend

EndWm


func DisplayUpdate() 
   'primary
   fcolor 90,90,90 :rect 130,310,120,24   
   fcolor 100,160,220 : print 150,315,pturns
   fcolor 190,90,90 :rect 130,345,120,24   
   fcolor 100,160,220 : print 150,350,pvolt
   'secondary
   fcolor 90,90,90 :rect 430,310,120,24   
   fcolor 100,160,220 : print 450,315,sturns
   fcolor 190,90,90 :rect 430,345,120,24   
   fcolor 100,160,220 : print 450,350,svolt
   'turns per voltage
   fcolor 90,90,90 :rect 430,400,120,24   
   fcolor 100,160,220 : print 450,405,tpv
swap
endfn

func Info()
   fcolor 140,180,200
   print 20,410,"LEFT primary......-1 V"
   print 20,430,"RIGHT primary.....+1 V"
   print 20,450,"UP secondary......+1 V"
   print 20,470,"DOWN secondary....-1 V" 
   print 20,490,"PAGE_UP    TPV....+1 N"
   print 20,510,"PAGE_DOWN  TPV....-1 N"
endfn

func DrawTrafo()
   'dispay frame 
   fcolor 90,90,90 :rect 4,4,612,250
   'trafo frame
   fcolor 190,190,190 :rect 200,40,trlen,180 : trlen = trlen - 40
   fcolor 190,190,190 :rect 220,60,trlen,140
   'draw primary coil
    fcolor 210,110,110 :rect 180,70,50,4
    var ty : ty = 75
	while ty < 190
         fcolor 210,110,110 :rect 180,ty,50,4
         ty = ty + 5
     wend
    'draw secondary coil
    fcolor 210,110,110 :rect 370,70,50,4
    ty = 75
	while ty < 190
         fcolor 210,210,110 :rect 370,ty,50,4
         ty = ty + 5
     wend
swap
endfn
