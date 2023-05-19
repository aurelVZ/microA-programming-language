' List/ Leaf by Dusty W Murray
var W,H,SAS,S,A,PI,X,Y,SAR
W=800: H=600: SAS=0: PI=3.14 : WCOLOR 0,0,0 
FCOLOR 120,160,100
S=10
WHILE S < 150
A=0
    WHILE A < 6.28
       SAR = SIN(SAS+A*6) * S/2
       X = SIN(A) * (S + SAR) : X = X + W/2
       Y = COS(A) * (S + SAR) : Y = Y + H/2
       PSET X,Y 
       A = A + 0.5/(S * 2 * PI)
    WEND
SWAP
SAS = SAS + 0.4
S = S + 15
WEND
FCOLOR 220,160,100
PRINT 10,10,"LEAF by Dusty W Murray /micro(A) version by Aurel"
SWAP
