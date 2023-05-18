' Orbit  in micro(A) by Aurel 
' Unfinshed
str txt[64] , stx , q1, q2
var i,tx,ty ,info,A,D,R,H, A1
var wp
ptr wmKeyDown
wcolor 0,0,60 : fcolor 150,200,210
q1 = "THIS IS HOUR ;H, AT WHAT ANGLE DO YOU WISH TO SEND YOUR PHOTON BOMB ?"
'load text/diagram into array txt[]
loadText() : loadDiagram()
'read array txt[]
readText()

'main
A = RAND(360)
D = RAND(200) + 200
R = RAND(20)  + 10
H=0

'IF H=7 then 490
'320 
H=H+1


goto exit

'events.........................................
WinMsg wmKEYDOWN

hWparam wp
'vkUP --------------------------------------
if wp = 38
     'check info
     if info = 2 : wcolor 0,0,60 : fcolor 210,180,110 : readText() : endif
endif 

'vkDOWN -------------------------------------- 
if wp = 40
    'check info
    if info = 1 : wcolor 0,0,0 : fcolor 210,180,110 : readDiagram() : endif
endif

'key S
if wp = 83
    readDiagram() : fcolor 150,200,210 : rect 10,440,740,80 :swap
    quest1()
    updateDisplay()
    fcolor 210,180,110 : rect 10,524,740,34
    print 20,536,"USE KEYS <- LEFT | RIGHT -> TO SET ANGLE"
    swap
endif

EndWm
'.............................................
label exit
'------------------------------------------------
func quest1()
     fcolor 210,180,110
     print 20,460,q1 : swap
endfn
'-----------------------------------------------
func updateDisplay()
     fcolor 90,90,90 :rect 630,110,120,24   
     fcolor 100,160,220 : print 650,115,A1
     print 540,115,"ANGLE :"
     swap




endfn

func readText()
'read each element and print it on window
i = 1 : tx = 20 : ty = 20
while i < 28
      stx = txt[i]
      if i = 2  : fcolor 210,180,110  : endif
      if i = 7  : fcolor 210,180,110  : endif
      if i = 14 : fcolor 210,180,110  : endif
      if i = 16 : fcolor 210,180,110  : endif
      if i = 21 : fcolor 210,180,110  : endif
      if i = 24 : fcolor 210,180,110  : endif
      if i = 26 : fcolor 210,180,110  : endif
      if i = 27 : fcolor 210,180,110  : endif
      print tx , ty , stx : swap
      fcolor 150,200,210
      ty = ty + 20

i = i + 1
wend

'check info variable
info = 1
endfn
'--------------------------------------------------------------------
func readDiagram()
info = 2
i = 30 : tx = 20 : ty = 20
while i < 57
      stx = txt[i]
      if i = 40  : fcolor 210,180,110  : endif
      if i = 50  : fcolor 210,180,110  : endif
      if i = 51  : fcolor 210,180,110  : endif
      if i = 52  : fcolor 210,180,110  : endif
      if i = 55  : fcolor 210,180,110  : endif
      if i = 56  : fcolor 210,180,110  : endif
      print tx , ty , stx : swap
      fcolor 150,200,210
      ty = ty + 20

i = i + 1
wend

endfn
'---------------------------------------------------------------------
func loadText()
txt[1]=  "SOMEWHERE ABOVE YOUR PLANET IS A ROMULAN SHIP."
txt[2]=  "........................................................."
txt[3]=  "THE SHIP IS IN A CONSTANT POLAR ORBIT.  ITS"
txt[4]=  "DISTANCE FROM THE CENTER OF YOUR PLANET IS FROM"
txt[5]=  "10,000 TO 30,000 MILES AND AT ITS PRESENT VELOCITY CAN"
txt[6]=  "CIRCLE YOUR PLANET ONCE EVERY 12 TO 36 HOURS."
txt[7]=  "........................................................."
txt[8]=  "UNFORTUNATELY, THEY ARE USING A CLOAKING DEVICE SO"
txt[9]=  "YOU ARE UNABLE TO SEE THEM, BUT WITH A SPECIAL"
txt[10]= "INSTRUMENT YOU CAN TELL HOW NEAR THEIR SHIP YOUR"
txt[11]= "PHOTON BOMB EXPLODED.  YOU HAVE SEVEN HOURS UNTIL THEY"
txt[12]= "HAVE BUILT UP SUFFICIENT POWER IN ORDER TO ESCAPE"
txt[13]= "YOUR PLANET'S GRAVITY."
txt[14]= "........................................................."
txt[15]= "YOUR PLANET HAS ENOUGH POWER TO FIRE ONE BOMB AN HOUR."
txt[16]= ".............................................."
txt[17]= "AT THE BEGINNING OF EACH HOUR YOU WILL BE ASKED TO GIVE AN"
txt[18]= "ANGLE (BETWEEN 0 AND 360) AND A DISTANCE IN UNITS OF"
txt[19]= "100 MILES (BETWEEN 100 AND 300), AFTER WHICH YOUR BOMB'S"
txt[20]= "DISTANCE FROM THE ENEMY SHIP WILL BE GIVEN."
txt[21]= "........................................................."
txt[22]= "AN EXPLOSION WITHIN 5,000 MILES OF THE ROMULAN SHIP"
txt[23]= "WILL DESTROY IT."
txt[24]= "........................................................."
txt[25]= "BELOW IS A DIAGRAM TO HELP YOU VISUALIZE YOUR PLIGHT."
txt[26]= ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
txt[27]= "PRESS ARROW -> KEY DOWN "

endfn
'-----------------------------------------------------------------------
func loadDiagram()

txt[30]= "                          90"
txt[31]= "                    0000000000000"  
txt[32]= "                 0000000000000000000"  
txt[33]= "               000000           000000" 
txt[34]= "             00000                 00000"
txt[35]= "            00000    XXXXXXXXXXX    00000"
txt[36]= "           00000    XXXXXXXXXXXXX    00000"  
txt[37]= "          0000     XXXXXXXXXXXXXXX     0000"  
txt[38]= "         0000     XXXXXXXXXXXXXXXXX     0000"   
txt[39]= "        0000     XXXXXXXXXXXXXXXXXXX     0000" 
txt[40]= "180<== 00000     XXXXXXXXXXXXXXXXXXX     00000 ==>0"
txt[41]= "        0000     XXXXXXXXXXXXXXXXXXX     0000"
txt[42]= "         0000     XXXXXXXXXXXXXXXXX     0000" 
txt[43]= "          0000     XXXXXXXXXXXXXXX     0000" 
txt[44]= "           00000    XXXXXXXXXXXXX    00000" 
txt[45]= "            00000    XXXXXXXXXXX    00000" 
txt[46]= "             00000                 00000"
txt[47]= "               000000           000000"
txt[48]= "                 0000000000000000000"
txt[49]= "                    0000000000000"
txt[50]= "                         270"                      
txt[51]= "X - YOUR PLANET"  
txt[52]= "O - THE ORBIT OF THE ROMULAN SHIP"
txt[53]= "ON THE ABOVE DIAGRAM, THE ROMULAN SHIP IS CIRCLING AROUND YOUR PLANET.DON'T FORGET THAT"
txt[54]= "WITHOUT SUFFICIENT POWER THE ROMULAN SHIP'S ALTITUDE AND ORBITAL RATE WILL REMAIN CONSTANT."
txt[55]= "GOOD LUCK....THE FEDERATION IS COUNTING ON YOU."
txt[56]= "PRESS ARROW KEY -> UP" 

endfn

