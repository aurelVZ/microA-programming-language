'digital rain/Matrix in micro(A)
var a,width,fontwidth,fontheight,i,y,n,height,mi,ifont,r,p
wcolor 0,0,0 : fcolor 100,170,100: print 10,10,"micro(A) matrix":swap
width = 800 : height = 600 : fontwidth = 8 : fontheight = 16
a = width / fontwidth 
print 10,40,a: print 100,40,"dim m[] is 100":swap
var m[100]
'fill array with negative random numbers range 600
i=1 : y=0
while i < 100
    m[i] = rand(height)
    y = y+20
    print 250,y,m[i]:swap
    i=i+1
wend
str chs
chs = chrs(65)
print 10,70,chs : swap
'pause
while p < 500
fcolor 0,0,0: rect 8,88,100,23:fcolor 0,150,200 
 print 10,90,p: swap : p=p+1:
 wend
wcolor 0,0,0:swap

label doLoop

'fcolor 0,0,0 : rect 0, 0, width, height

i=1
while i < 100
       m[i] = m[i] + fontheight
       mi = m[i]
       if m[i] > 0
           if m[i] > height : m[i] = rand(height) : endif
           ifont = i * fontwidth - fontwidth
            mi = m[i] 
           r = rand(254) : chs = chrs(r)
           fcolor 0,150,0  : print ifont,(mi+80),chs
           fcolor 0,150,0  : print ifont,(mi+60),chs
           fcolor 0,180,0  : print ifont,(mi+40),chs
           fcolor 0,200,0  : print ifont,(mi+20),chs
           fcolor 0,250,0 : print ifont, m[i],chs 
       endif
       i=i+1 
fcolor 0,60,0 : print ifont,(mi-100),chs


wend
swap
 
goto doLoop
