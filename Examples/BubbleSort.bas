'bubble sort in micro(A) from LBB
wcolor 0,0,0 : fcolor 150,180,240
var startTime,endTime,time
var sort, index, itemCount, temp, i ,hasChanged, counter
itemCount = 1000 
var item[itemCount]

print 10,10,"Bubble Sort micro(A)..please wait!":swap
'before Sort......................
i=1
while i < itemCount
    item[i] = rand(100)
    i = i + 1
wend
'.................................
'ticks start
GETTICK startTime 

counter = itemCount
label doLoop
    hasChanged = 0
    i=1
    while i < counter 
        if item[i] > item[i + 1] 
            temp = item[i]
            item[i] = item[i + 1]
            item[i + 1] = temp
            hasChanged = 1
        endif
        i = i + 1
    wend
    counter = counter - 1
if hasChanged = 1 : goto doLoop : endif

'ticks end
GETTICK endtime
time = (endTime - startTime) / 1000
fcolor 230,140,120: print 10,250,time : swap
 

