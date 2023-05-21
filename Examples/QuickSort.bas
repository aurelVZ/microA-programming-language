' Quick Sort in micro(A) by nOOb author of RCBasic
    wcolor 0,0,0 : fcolor 150,180,240
    var startTime,endTime,time
    var sort, index, itemCount, temp, i ,hasChanged, counter, tmp, j
    itemCount = 1000 
    var item[itemCount]
    print 10,10,"Quick Sort micro(A)..please wait!":swap
    'before Sort......................
    i=1
    while i < itemCount
        item[i] = rand(100)
        i = i + 1
    wend
    '.................................
    'ticks start
    GETTICK startTime 
	i = 1
	tmp = 0
	while i < itemCount
		j = i
		while j < itemCount
			if item[j] < item[i]
				tmp = item[i]
				item[i] = item[j]
				item[j] = tmp
			endif
			j = j + 1
		wend
		i = i + 1
	wend
    'ticks end
    GETTICK endtime
    time = (endTime - startTime) / 1000
    fcolor 230,140,120: print 10,250,time : swap 
