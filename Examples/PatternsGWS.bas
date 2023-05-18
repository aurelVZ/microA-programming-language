' code by GWS - R.I.P.
' micro(A) version by Aurel
var i ,n ,red ,green ,blue
var ww ,wh ,dots ,xpos ,ypos
var repeat ,random
var a ,b ,c ,x ,y ,z
var j ,xfocus ,yfocus
var rr ,gg ,bb , count,r
ww = 640 : wh = 480
'.....................................
wcolor 0,0,0 : xfocus = ww * 0.47 : yfocus = wh * 0.45

label repeat
   count = count + 1
   'wColor 0,0,0
   random = RAND(50)

r=0
while r < random
' set up some random starting positions ..
        a = RND(1)
        b = 0.99987
        c = 2 - 2 * a

        dots = 5000     
        x = 0
        j = 0
        y = RND(1.0)*12 + 0.246

' calculate and draw the points ..
  i=0
   while i < dots

                z = x
                x = b * y + j
            j = a * x + c * (x*x)/(1 + x*x)
                y = j - z
                xpos = x*20 + xfocus
                ypos = y*20 + yfocus

                rr = RAND(255)
                gg = RAND(255)
                bb = RAND(255)
                fColor rr,gg,bb
                'circle xpos,ypos,z
        pset xpos,ypos
    i=i+1
    'swap
        wend

r=r+1
swap
fcolor 192,192,192 : rect 1,1,798,598

wend

if count < 50
  goto repeat
endif
