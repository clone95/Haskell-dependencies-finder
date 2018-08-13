# Haskell dependency finder

##

I followed a course at my university (Languages and Compilers) where a subsection (and part of the exam) was a Haskell program.
I find functional programming very dynamic (lazy evaluation is something "strange" but a very smart feature) and i find that you are obliged to radically change the point of view in programming. This is very good to improve in programming itself and problem solving (even the not funcional paradigm).

## Description

Task taken from university exam:

Given 2 lists, the first representing installed packages and the second containing tuples representing the dependencies between packages (1 to 1), it outpts the useless packages for the already installed ones.

### Example

#### - Installed:                

5                      
6                                          

#### - Dependencies:

4 , 3
5 , 4
1 , 2
6 , 7
5 , 6
2 , 4

#### - Output:
 
----->   for p. 5 and 6 you need
 
[ 7 , 4 , 6 , 3 ]
