' Koch by B+ , mod by Aurel 12.11.2022
' _Title "Koch Snowflake" ' b+ mod 2022-11-11
var DIST[9] , LEVEL[9]
var ST, STM ,SX, SY, SA, PI, X, Y, A, BR, OX, OY ,sf,turn,div
div=3
wcolor 0,0,0 : fcolor 120,150,180

label  start
DIST[1] = 270
LEVEL[1] = 4
SX = 200: SY = 200: SA = 0: PI = 3.14
if turn = 2 : sx=sx+5 : sy=sy+2 : sa=5 : endif
X = SX : Y = SY : A = SA
A = A + 60
ST = 1
Snowflake()  ' 1
A = A - 120
ST = 1
Snowflake()  '6
A = A - 120
ST = 1
Snowflake()

turn = turn + 1
if turn < 10 : goto start : endif
print 10,10,"Koch Snowflake by B+ , mod by Aurel 12.11.2022":swap

func Snowflake()
   
    ST = ST + 1 
    STM = ST - 1
    If LEVEL[STM] = 1    
      ST = ST - 1
       OX = X
       OY = Y
       X = X + DIST[ST] * cos(A * PI / 180)
       Y = Y + DIST[ST] * sin(A * PI / 180)
       Line OX, OY ,X, Y :swap  
       goto ExitSub 
    endif   
   ' else
   ' ST = ST - 1 
    'if turn <1 0 : div=div+0.05 : endif
    LEVEL[ST] =  LEVEL[(ST-1)] - 1
    DIST[ST]  = DIST[(ST-1)] / div
    if turn > 5 : div=div+0.005 : endif
  
    Snowflake()    '2
    A = A + 60
   
    Snowflake()    '3
    A = A - 120

    Snowflake()    '4
    A = A + 60 

    Snowflake()    '5
    
    ST = ST - 1
   'endif
label ExitSub
 'ST = ST - 1

endfn
