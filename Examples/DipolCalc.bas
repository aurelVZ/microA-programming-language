'Antenna Dipol Calculator demo
var mx, my, wp, cons, freq, length ,dlen, ox, cx, dx
ptr wmKeyDown
var mode
cons = 142.5 : freq = 10 : length = cons/freq : ox = 400 : dx = ox - length/10 : cx = 400
wcolor 40,60,120 : fcolor 140,180,200 : ' rect 0,0,800,600 
print 6,10,"FREQENCY(MHz)"
print 6,40,"LENGTH  ( m )"
fcolor 220,180,150 : print 300,10,"Antenna Dipol Calculator micro(A)-DEMO":swap
mode = 1  ' 1 to 10 Mhz
dlen = int(length*3.14) :   dx = ox - (dlen/2) 
print 300,24,dx :  fcolor 100,140,100 : print 300,44,(1.41*5)
DisplayUpdate()
Info()
DrawDipol()


WinMsg wmKEYDOWN

hWparam wp
'vkLEFT ?
if wp = 37
   if freq > 1
   freq = freq - 1 : length = cons/freq : dlen = int(length*5)
        if dx > 0 
           dx = ox - (dlen/2)
           DisplayUpdate() : DrawDipol()
        endif
   endif
endif

'vkRIGHT ?
if wp = 39
    if freq < 2500
    freq = freq + 1 : length = cons/freq : dlen = int(length*5)
       if dx < 400 
          dx = ox - (dlen/2) 
          DisplayUpdate() : DrawDipol()
       endif
    endif
endif

'select mode
while wp ! 27
'wait
wend

EndWm

func DisplayUpdate()
   fcolor 90,90,90 :rect 124,5,100,24   
   fcolor 100,160,220 : print 130,10,freq 
   fcolor 90,90,90 :rect 124,35,100,24   
   fcolor 100,160,220 : print 130,40,length
   swap
endfn

func Info()
   fcolor 140,180,200
   print 20,410,"LEFT Key... <--  -1 MHz"
   print 20,430,"RIGHT Key.. -->  +1 Mhz"
   print 20,450,"UP Key... <--   +10 MHz"
   print 20,470,"DOWN Key... <-- -10 MHz" 
   'swap
endfn

func DrawDipol()
   'draw frame 
   fcolor 90,90,90 :rect 0,180,800,60
   'draw dipol
   fcolor 190,90,90 :rect dx,200,dlen,20
   'draw connector
   fcolor 200,200,100 : circle cx,220,6 
swap
endfn






