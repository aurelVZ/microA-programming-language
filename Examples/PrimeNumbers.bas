'prime numbers using fraction() - micro(A) by Aurel
var k,max,c,y,fr,p,n,pk,i
wcolor 0,0,0 : bcolor 0,0,0:fcolor 230,230,130
print 10,5,"prime numbers micro(A) by Aurel"
print 10,25,"num       prime    fraction"
fcolor 130,220,220
n=0 : max = 20 : y=20 : c=0


'pseudo do loop

while n < max

  y=y+20 : print 10,y,n 
  n=n+1
  c=0:i=0

	while i < n
	'---------------------------------
	i=i+1
	fr = frac(n/i) : print 200,y,fr 
		if fr = 0
			c=c+1
		endif
	wend

	'----------------------------------

   if c = 2
	  p = n
	  print 100,y,p
   endif
wend

'-------------------

func prime()
  p=n
  y=y+20
  print 100,y,p
endfn
'--------------------
print 300,4,"Primes with fraction -> frac()..." :swap
