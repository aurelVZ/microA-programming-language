'zx dunny pythagora tree 1-dim array test 3 - 21.12.2022
'coded by Paul Dunn in micro(A) with lines method from BASIC256 - rosetta code
VAR x1[13],y1[13],x2[13],y2[13],x3[13],y3[13],x4[13],y4[13]
VAR x5[13],y5[13],dx[13],dy[13],jmp[13]
var w,scrw,h,w2,diff,d,lcount
    scrw = 800: w=scrw: h=w*0.6 : w2=w/2 : diff=w/14 : d=1
    x1[1]= w2-diff : y1[1]= h-10
    x2[1]= w2+diff : y2[1]= h-10 : jmp[1]=110
    wcolor 0,0,0 : fcolor 160,220,250
    'GOTO lab_1000

print 10,510,"Pythagora Tree - with LINES (based on Basic256 & ZXDunny code) in micro(A)":swap
fnTree()
	
func fnTree()

label lab_1000
lcount = lcount + 1
rect 0,0,100,25 : print 10,10 ,lcount

     dx[d]=x2[d]-x1[d] : dy[d]=y1[d]-y2[d]
     x3[d]=x2[d]-dy[d] : y3[d]=y2[d]-dx[d]
     x4[d]=x1[d]-dy[d] : y4[d]=y1[d]-dx[d]
     x5[d]=x4[d]+(dx[d]-dy[d])/2 : y5[d] = y4[d]-(dx[d]+dy[d])/2
 
 
'draw the box BASIC256 version with lines
      fcolor 100, 250, 250   : Line x1[d], y1[d], x2[d], y2[d] 
      fcolor 240, 140,100   : Line x2[d], y2[d], x3[d], y3[d]
      fcolor 105, 235, 100   : Line x3[d], y3[d], x4[d], y4[d] 
      fcolor 200, 155, 100 : Line x4[d], y4[d], x1[d], y1[d]

     swap
     
     If d < 12
        d=d+1
        x1[d]= x4[(d-1)]: y1[d]= y4[(d-1)]: x2[d]= x5[(d-1)] : y2[d]= y5[(d-1)] : jmp[d]=1010
        GOTO lab_1000
     Else
        GOTO lab_1030
     Endif

label lab_1010				'label 1010
     x1[d]=x5[(d-1)] : y1[d]=y5[(d-1)]: x2[d]=x3[(d-1)] : y2[d]=y3[(d-1)]: jmp[d]=1020
	GOTO lab_1000
label lab_1020
    'prevent negative index of array
    if d > 0 : d = d - 1 : endif
label lab_1030
	If jmp[d]=1010
		GOTO lab_1010
	Else
		GOTO lab_1020
	Endif

endfn


