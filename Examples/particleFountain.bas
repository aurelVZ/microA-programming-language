' particle fountain attempt in micro(A) 14.8.2023
' original by B+ in sb/qb64
var nP, i, xmax, ymax ,lp ,run
xmax = 800 : ymax = 600 : nP = 1000
'declare arrays
var px[nP] ,py[nP] ,pdx[nP] , pdy[nP] ,pr[nP] , pc[nP]

i=1
while i < nP
    new()
    i=i+1
wend

'print 10,10 ,"array filled" : swap
run = 1
'repeat
WHILE run = 1
    rect 0,0,800,600  'cls
    If lp < nP : lp = lp + 10 : endif
  ' For i = 1 To lp
    i=1
    while i < lp
        pdy[i] = pdy[i] + 0.1
        px[i] = px[i] + pdx[i]
        py[i] = py[i] + pdy[i]
        If px[i] < 0 | px[i] > xmax : new() : endif
        If py[i] > ymax & pdy[i] > 0
            pdy[i] = -0.75 * pdy[i] : py[i] = ymax - 5
        EndIf
        fcolor 200 , 200,  250
        Circle px[i], py[i], pr[i]
    i=i+2
    wend
    'showpage
    swap
 WEND
 


func new()
    px[i] = xmax / 2  + Rand(20) - 10
    py[i] = ymax + Rand(5)
    pdx[i] = Rnd(0.95) - 0.5
    pdy[i] = -10
    pr[i] = Rand(5)
    pc[i] = Rand(55) + 245  '< 245?  you want something bluish aqua for bubbly water
endfn

