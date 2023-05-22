' EyeCandy #9 from "Sprezzo #2 Problem 2022-03-06"
var xc,yc,xmax,ymax,pi,p2,px,py,s,r,colr,a,i,pR,pG,pB,red,green,blue,cN
xmax = 800 : ymax = 600 : xc = xmax/2 : yc = ymax/2 : pi=3.14159 : p2 = pi*2
wcolor 0,0,0 : var t
t=0
while t < 10
    resetPlasma()
    'Plasma()
    s = 0
    a=0
    while a < p2
     Plasma()
    'For a = 0 To p2 Step p2 / (16 * 360) 
        i = 50 * Sin(s)     ' 2 * s or just s
        'For r = 0 To yc
         r=0
         while r < yc       
            px=xc + r * Cos(a) : py= yc + r * Sin(a)
            'fcolor red,green,blue
            PSet px,py      'colr(r + i)
        'Next
         r=r+1
         wend
        s = s + p2 / 180
    'next
     a = a+p2/(3.14*360)  'step a
     swap
     wend
    'delay 3000
t=t+1
fcolor 0,150,180 : rect 2,2,30,30 : print 10,10,t
wend

Func Plasma()
 cN = cN + 0.2
 red = 127+127 * Sin(pR * cN): green= 127+127 * Sin(pG * cN):blue= 127+127 * Sin(pB * cN)
 fcolor red,green,blue
Endfn

Func resetPlasma()
    pR = Rand(255): pG = Rand(255): pB = Rand(255)
Endfn
