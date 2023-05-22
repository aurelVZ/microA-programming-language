'floating point bench_02 by Aurel
var start,endtime,time
var i,ix,ixtra,x,y,t,t0,t2,n5,checsum
wcolor 0,0,0 : fcolor 120,140,200 : print 10,10,"bench FLOAT by Aurel"
fcolor 220,140,100 : print 10,40,"...please WAIT!" : swap
ixtra = 100
n5 = 32 * 100
t = 0.49999975
t2 = 2.0

GETTICK start
    X = 0.5
    Y = 0.5
    'FOR ix = 1 TO ixtra
  ix=1
  while ix < ixtra
     ' FOR i = 1 TO n5
      i=1
      while i < n5
          X = t * ATAN(t2 * SIN(X) * COS(X) / (COS(X + Y) + COS(X - Y) - 1))
          Y = t * ATAN(t2 * SIN(Y) * COS(Y) / (COS(X + Y) + COS(X - Y) - 1))
          i = i + 1
      wend
      t = 1.0 - t
   ' NEXT ix
  ix = ix + 1
  wend
  t = t0
  checsum = Y
print 10,200,checsum
GETTICK endtime
time = (endTime - start) / 1000
fcolor 200,200,240: print 10,250,time : swap 
