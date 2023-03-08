# micro(A) programming language
micro(A) is a modern and minimal general purpose programming language.
It is Easy to Use BASIC like Programming Language.
micro(A) interpreter comes with complete IDE in which you can make your programs.

For more information look on
Community Forum 

Binary version is under Discussion board.
Source code only by request!

![ScreenShot](https://aurelsoft.ucoz.com/logoA3.png)
![ScreenShot](https://aurelsoft.ucoz.com/microA_Interpreter.png)

# List of built-in statements and functions
## variable types :
**var a,b,c,d**  floating point variable type
**var a[10],b[20],c[30]**  floating point array type

**str e,f,g,h**  string variable type
**str e[10],f[20],g[20]**  string array type

**ptr i,j,k,l**  int | pointer variable type
**ptr i[10],j[20],k[30]**  integer / pointer array type

## statements :
** NOTE : Expressions are not allowed as argument !!!

**print** x , y ,var | QS -> print variable or quoted string on window  

**wColor** r , g , b  -> set window color

**fColor** r , g , b  -> set front color

**bColor** r , g , b  -> set back color

**pset** x , y   -> draw pixel on x,y position

**circle** x , y , r   -> draw circle on x,y position with radius r

**line** x , y , x1 , y1   -> draw line from x,y position to x1,y1 

**rect** x , y , w , h1   -> draw rectangle on x,y 

**label** name   -> label

**goto** name   -> goto label

**if** var **operator** n|s **Logic operator** var **operator** n|s   -> if statement

**operator** : **<** - less, **>** - greater, **=** - equal, **!** - not

**Logic operator** : **&** - and  , **|** - or

**else** - else statement , **endif** - end if

**loops** :

**while**  var **operator** n|s  **Logic operator** var **operator** n|s 

**wend** - while end

**func** - function / type null as subroutine

**endfn** - function end

//testing window messages use : WinMsg msgName .. EndWm

new winApi functions added :

**MouseX** var , **MouseY** var

**hWparam** var , **hLParam** var

//before you use message name you must declare it by ptr statement

**ptr** wmMouseMove ,wmKeyDown

**WinMsg** msagName <code>  **EndWm**


