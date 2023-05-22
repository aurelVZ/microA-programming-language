'curlicue fractal
var x,y,f,i,df,pi,seed
x=400:y=300 : wcolor 0,0,0 : bcolor 0,0,0
seed = 0.34
df=0
f=0
fcolor 0,100,200  
label start
swap
x = abs(-x + cos(f*f)/0.4)
y = abs(-y + sin(f*f)/0.4)
pset x,y
f = f + 0.19
if f < 2000
  fcolor 0,0,0 : bcolor 0,0,0 :rect 200,10,100,20 
  fcolor 100,150,220 : print 200,10,f
  goto start
endif
fcolor 120,160,190 : print 310,10,"curlicue fractal in micro(A)":swap
