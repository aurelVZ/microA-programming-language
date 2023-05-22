'test fill numeric array in micro(A)
wcolor 40,40,80:fcolor 140,180,230 : swap
var arr[4000] ,brr[4000]
var n,i,start,end,time

n=1
'fill array elements with values
while n < 4001
    arr[n] = n
    n=n+1
wend

time  = (end - start) / 1000
print 10,10,"array with 4000 elements in micro(A)"
fcolor 230,200,100 :print 10,50,"read array elements with printing": swap

i=1
'copy values from first array to second array
GETTICK start
while i < 4001
   rect 5,75,100,25
   brr[i] = arr[i]
   fcolor 230,200,100: print (10),(80),brr[i]
   i=i+1
swap
wend
GETTICK end
time = (end - start)/1000
fcolor 140,180,130 :print 15,120,"time"
rect 10,145,100,20: print 15,150,time : swap
