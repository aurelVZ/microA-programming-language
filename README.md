# micro(A) programming language
micro(A) is a modern,minimal general purpose programming language.
Tokenizer for micro(A) Interpreter is first part of micro(A) programming language.
It is written as include file microAT.inc .
This is a general purpose tokenizer which can be used in any modern imperative 
programming language  like BASIC,C,PASCAL...etc.
It is written in o2 basic compiler and as such is very fast ,it use simple
data structure - array of tokens and array of token types.
It is easy to modify and use for any purpose.
For more information look : https://aurelsoft.ucoz.com

Here is a simple Fibonacci sequence example

'fibonacci series in micro(A)
varnum a, b, s, i ,n ,x ,y
wcolor 0,0,0 : fcolor 220,180,100
print 10,10,"fibonacci sequence in micro(A)"
fcolor 80,140,120
print 10,30,"number of elements ->"
fcolor 100,200,200
a = 1
b = 1
n = 20 
y = 50

label start
s = a + b
print 10,y,s
y = y + 20
a = b
b = s
i = i + 1

if i < 23 
   goto start
endif
