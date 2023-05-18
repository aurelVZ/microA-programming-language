'two gears QB64pe rotate by Mark aka B+
'version for micro(A) by Aurel
wcolor 0,0,0:swap
var Z,A,R,X1,Y1,X2,Y2,fc,ao
label doLoop
Z=0
'rect 0,0,600,400
while Z < 250
rect 0,0,600,400
      A=0 : fc=150
      while A < 6.28
        R = 100 + Cos(20 * A + Z / 20) * 15
        X1 = Cos(A + ao) * R + 220 : Y1 = Sin(A + ao) * R / 3 + 240 - Z / 2
        R = 50 + Sin(-10 * A + Z / 20) * 15
        X2 = Cos(A - 2 * ao) * R + 390: Y2 = Sin(A - 2 * ao) * R / 3 + 240 - Z / 2
        fc =  Z * 1.25 + 2.5 : fcolor 100,100,fc:  PSet X1, Y1 
        fcolor fc,100,90:  PSet X2, Y2 
        'If Z = 20 : Line 220, (240 - Z / 2), X1, Y1: Line 370, (240 - Z / 2),X2, Y2: endif      
       A = A + 0.01       
       wend : swap
Z = Z + 7
swap
wend
ao = ao + 0.04
goto doLoop
