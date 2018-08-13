# Haskell dependency finder

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
