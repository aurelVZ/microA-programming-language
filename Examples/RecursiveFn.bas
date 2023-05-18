'func test recursion in micro(A) by Aurel
var y , b : y = 100 : b = 600
print 10,350,"function recursive"

fnRecursive()

' this function use recursion to call himself inside
' condition of func(read subroutine!) is TRUE

func fnRecursive()
   b = b - 1 : y = sin(b) + rand(250) 
   fcolor 80,80,100 :rect 10,365,108,24  
   fcolor 100,160,100 : print 20,370,b : circle b,y,5: swap
  'recursive call  
   If b > 10 : fnRecursive() : endif

endfn
