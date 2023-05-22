' factorial with recursion in micro(A)
var value,res 
var number ,fact
number = 7
fact = 1
value = 1

print 10, 10, "The factorial of -> " : 
print 180,10,number :swap

factorial() 

fcolor 230,80,60: print 10,240,"RECURSION OVER!"   
swap

func factorial()
  
  if value < number
       value = value + 1 
       fcolor 140,180,220: rect 95,95,80,23: print 100,100,value :swap
       fact = fact * value
      fcolor 240,180,120: rect 95,195,80,23 : print 100,200,fact :swap
       ' recursive call
       factorial()        
  endif

endfn
