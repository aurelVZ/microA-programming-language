# micro(A) programming language
micro(A) is a modern and minimal general purpose programming language.
It is Easy to Use BASIC like Programming Language.
Tokenizer for micro(A) Interpreter is first part of micro(A) programming language.
It is written as include file microAT.inc .
This is a general purpose tokenizer which can be used in any modern imperative 
programming language.
It use simple data structure - array of tokens and array of token types.
Easy to modify and use for any purpose.
micro(A) interpreter comes with complete IDE in which you can make your programs.

For more information look : https://aurelsoft.ucoz.com
Community Forum : http://basic4all.epizy.com

You tube videos: https://youtu.be/eZWxhR25Ng4
https://www.youtube.com/watch?v=2_m-pmXFjT4
micro(A) Quick start
https://youtu.be/mIIFKCtfCtY

Binary version + source code
of
CURRENT version is under Discussion board.

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


