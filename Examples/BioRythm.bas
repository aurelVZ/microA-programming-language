' current month bio-rythm in micro(A)
var lx1 ,ly1 ,lx2 ,ly2, f, y, startx, stopx, ndays,fd,fm,fy
var dd ,mm ,yy ,cd, cm, cy, bd, bm, by,dx,n,pi,t,tf
'set maincolor
wcolor 50, 80, 30 : fcolor 220, 200, 130
print 20,5,"BioRythm in micro(A)"
pi = 3.14159
'call draw raster fn
drawRaster()

'current date
cd=13
cm=7
cy=2022
'user birthday
bd=8
bm=5
by=1969

'calc difference 
fd = 31 - (cd+bd) : fcolor 100,180,140 : print 20,330,fd 
fm = 31 - (cm+bm) : fcolor 100,180,170 : print 20,360,fm

'calc number of days
'current year - birth year  -> number of years  * 365
ndays = (cy - by ) * 365
fcolor 220,220,120 : print 20,300,"Number of days: " :print 200,300,ndays

'call 3 func...
showPhysical()
showEmotional() 
showIntellectual()
'show days..
showDays()

func drawRaster()
fcolor 100, 140, 110 : rect 20, 40, 601, 240
lx1=20 :lx2=620 : ly1=60
'horizontal lines ...........................
while ly1 < 280
	ly2=ly1
	line lx1, ly1, lx2, ly2
ly1 = ly1 + 20
wend

ly1=40
ly2=240
'vertical lines.............................
while lx1 < 620
	lx2=lx1
	line lx1, ly1, lx2, ly2
lx1=lx1+20
wend
'center line
fcolor 100, 140, 181 : Line 20,140,620,140

swap
endfn

'..........................................................
func showPhysical()
'test phisyical : sin(2*PI/23 * t) 
'fcolor 255,100,100 : print 40,262,dd
t = 0 : t = nDays
'phisical curve...
startx = 20 : f = startx: stopx = 620 : fColor 255,100,100
tf = 620/28
 while f < stopx
	y = 140 + sin( 2*(pi/23) * f/23)*(50+fd)
	rect f,y,2,2
f=f+1

wend
swap
endfn
'..........................................................
func showEmotional() 
'test emotional  sin(2*PI/28 * t)
'emotional curve...
startx = 20 : f = startx: stopx = 620 : fColor 100,240,240
while f < stopx
	y = 140 + sin( 2*(pi/28) * f/28) * (50+fm)
	rect f,y,2,2
f=f+1
wend

swap
endfn
'.........................................................
func showIntellectual() 
'test sin(2*PI/33 * t)
'intelectual curve...
startx = 20 : f = startx: stopx = 620 : fColor 100,180,140
 while f < stopx
	y = 140 + sin( 2*(pi/33) * f/33) * 50
	rect f,y,2,2
f=f+1
wend

swap
endfn
'............................................................
func showDays()
dx=30 : n=1 : fcolor 100,150,220
while dx < 620
   print dx,240,n
   n=n+1
dx=dx+20
wend
swap
endfn


