' easter eggs QB64pe by Mark aka B+
' version for micro(A) by Aurel
var x,y,xup,px,py,scale,sw,sh,r,g,b,colorCnt,cr,cg,cb
sw = 500 : sh = 500
scale = 200 : wcolor 0,0,0

label DoLoop
    x = -1
    r = Rand(1): g = Rand(1): b = Rand(1) ' setup for Plasma Coloring!
    While x < 1
        y = -1
        While y < 1

            ' Plasma coloring changes color: ColorCnt, at every step in loop whether we draw or not
            'this gets symmetry between left and right ends of egg
           If x < 0 : colorCnt = colorCnt + 0.0005 : Else : colorCnt = colorCnt - 0.0005 : endif ' setup for color

            ' Plasma Coloring Method
           ' Color _RGB32(128 + 127 * Sin(r * colorCnt), 128 + 127 * Sin(g * colorCnt), 128 + 127 * Sin(b * colorCnt))
if y > 0 
cr=128*(1-y) + 127*(1-y) * Sin(r * colorCnt): cg=128*(1-y) + 127*(1-y) * Sin(g * colorCnt) : cb=128*(1-y) + 127*(1-y) * Sin(b * colorCnt)
endif
if y < 0 
cr=128 + 127 * Sin(r * colorCnt): cg=128 + 127 * Sin(g * colorCnt) : cb=128 + 127 * Sin(b * colorCnt)
endif
           
           fcolor cr,cg,cb
           xup = x * x + (1.4 ^ x * 1.6 * y) ^ 2 - 1
           px = scale * x + 400: py = scale * y + 260
           If xup < 0.01
               ' Line (px, py)-Step(1, 1)
                rect px,py,2,2
           EndIf

            y = y + 0.01
        Wend
        x = x + 0.01
    swap
    Wend
    'swap
    
    colorCnt = 0
    '_Delay 2
Goto DoLoop

