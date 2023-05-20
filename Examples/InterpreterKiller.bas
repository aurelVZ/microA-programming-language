' benchmark called interpreter killer by Ed Davis
var start,endtime,time
var accum,count,leftedge,rightedge,topedge, bottomedge,xstep ,ystep,maxiter,thechar,x,y,x0,y0,i,temp,xx,yy,xy,count3
wcolor 0,0,0 : fcolor 120,140,200 : print 10,10,"Interpreter killer by Ed Davis":swap
accum = 0
count = 0
GETTICK start
while count < 1545
    leftedge   = -420
    rightedge  =  300
    topedge    =  300
    bottomedge = -300
    xstep      =  7
    ystep      =  15

    maxiter    =  200

    y0 = topedge
    while y0 > bottomedge
        x0 = leftedge
        while x0 < rightedge
            y = 0
            x = 0
            thechar = 32
            xx = 0
            yy = 0
            i = 0
            xy = xx + yy
            while  xy < 800 & i < maxiter
                xx = int((x * x) / 200)
                yy = int((y * y) / 200)

                if xy > 800 
                    thechar = 48 + i
                    if i > 9 
                        thechar = 64
                    endif
                 else
                    temp = xx - yy + x0
                    if x < 0 & y > 0 | x > 0 & y < 0
                        y = (-1 * int((-1 * x * y) / 100)) + y0 
                    else
                        y = int(x * y / 100) + y0
                    endif
                    x = temp
                endif


                i = i + 1
                fcolor 220,220,120:rect 5,45,100,23: print 10,50,i :swap
            wend
            x0 = x0 + xstep
            accum = accum + thechar
        wend
        y0 = y0 - ystep
    wend
    
    count3 = round(count /300)
    if count3 = 0 
       'blue
       fcolor 100,160,180::rect 5,95,150,23: print 10,100,accum:swap
    endif
    count = count + 1
'green
fcolor 100,160,100::rect 5,145,150,23:print 10,150,count:swap
wend

print 10,200,accum
GETTICK endtime
time = (endTime - start) / 1000
fcolor 200,200,240: print 10,250,time : swap
