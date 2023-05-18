'draw palette shift with pixels
wcolor 0,0,0 : var x,y,cr,cg,cb

x=0 
while x < 255
    y=0
    while y < 255
        cb = 255 - x 
        fcolor x,y,cb : pset x,y 
     y=y+2
     wend
x=x+2
swap
wend
print 10,270,"Pallete in micro(A)"
swap
