' test str(num) , val(string
' micro(A) by Aurel
bcolor 60,60,60: fcolor 210,243,100 
 print 10,10,"STR$(),VAL() test in micro(A)" 
wcolor 20,80,100 :swap
str buff[10] 
var p
str s
p = 45
s = STRS(p)
' show numeric value of p
fcolor 230,233,100
print 10,100,"str$ of p:" : print 150,100,s 

str au, mA, lefts, rights, substr
au = "AUREL" 
fcolor 250,250,250
print 10,150,"strings are AUREL and MICROA"

lefts = LSTR(au,2)
fcolor 130,220,240
print 10,180,"Left string,2 is:"  : print 180,180,lefts

rights = RSTR(au,3)
fcolor 250,220,140
print 10,210,"Right string,3 is:" : print 180,210,rights

mA = "MICROA"
substr = MSTR(mA,3,3)
fcolor 150,240,140
print 10,240,"Mid string,3,3 is:" : print 180,240,substr
swap
'test multi-line print using CRLF 
str crlf
crlf = chrs(10) + chrs(13)
buff[1] = "Test multi-line print using CRLF" 
buff[2] = "in micro(A) Interpreter"

fcolor 228,156,128
print 10,280,buff[1] 
print 10,300,buff[2]

swap
