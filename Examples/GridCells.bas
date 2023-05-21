'draw cells with grey scale
var ly,lx,cell
'draw grid
grid()


func grid()
'clear screen 
fcolor 0,0,0 : rect 0,0,800,512 :

'draw shadows
ly=0 
While ly < 480
      'draw by X
      lx=0
      While lx < 768      
         fcolor 60,80,60 : rect lx,ly,32,32
         cell = cell + 1 : swap
         lx = lx + 32
      Wend 
ly = ly + 32
Wend

endfn
