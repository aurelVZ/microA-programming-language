'Easy spiral by MGA,johnno56
var pi,s,tick,c,h,x,y,rx,ry,cr,fr,fg,fb
wcolor 0,0,0: pi = 3.14159
s = 7
tick = 1
fr=250:   fg=180 :   fb=100
label doLoop
    fcolor 0,0,0:rect 0,0,700,700
    c=1
    label inner
        h = c + tick
        x = Sin(6 * h / pi) + Sin(3 * h)
        h = c + tick * 2
        y = Cos(6 * h / pi) + Cos(3 * h)
        'fr=rand(255) :   fg=rand(255) :   fb=rand(255)
        
        fcolor fr,fg,fb : rx = s * (20 * x + 50) : ry = s * (20 * y + 50):cr=rand(3) 
        circle rx,ry,2
        'pset rx,ry 
        c=c+1
     if c < 1000 : goto inner : endif
	swap
    tick = tick + 0.1
goto doLoop
