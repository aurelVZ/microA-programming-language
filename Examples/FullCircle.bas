'full_circle by [B+=MGA]2017->micro(A) by aurel
'everything was supposed to be turning around another circle
var xc,yc,xx,yy,x,y,x3,y3,r,w,ww,w3,pi,i,j,k,ww,loop
xc=640/2 : yc=480/2 :pi=3.14: i=1 : j=1: k=1: loop=1
wcolor 0,0,0
while loop < 2400
  r = r + pi/180
  w = w + pi/72
   i=1 : j=1: k=1
  while i < 12
    x=xc+200*cos(w+i*pi/6)*sin(r)
    y=yc+200*sin(w+i*pi/6)*sin(r)
    fcolor 120,150,100 : circle x,y,40
    ww = ww + pi/80
     while j < 12
      xx=x+100*cos(ww + j*pi/6)*sin(r)
      yy=y+100*sin(ww + j*pi/6)*sin(r)
      fcolor 150,100,100 : circle xx,yy,20
      w3 = w3 + pi/80
       while k < 12
        x3=xx+50*cos(w3 + k*pi/6)*sin(r)
        y3=yy+50*sin(w3 + k*pi/6)*sin(r)
        fcolor 100,120,150 : circle x3,y3,r
        k = k + 1
      wend
    j = j + 1
    wend
    i = i + 1
  wend
'wcolor 0,0,0

  loop = loop + 0.1
swap
wend
