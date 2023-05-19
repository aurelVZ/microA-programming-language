' fake input mA
str input
var tx,ty,wp
ptr wmKeyDown
wcolor 0,0,0: fcolor 200,220,250
input = "INPUT TEXT"

ty = 10 : ty = 10
print 10,ty,input : swap


WinMsg wmKEYDOWN

hwParam wp
'key ENTER
if wp = 13
   ty = ty + 20 : tx = tx + 20
   print tx,ty,input : swap

endif



EndWM 
