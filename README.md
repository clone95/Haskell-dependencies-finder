# Haskell dependency finder

## Description

Task taken from university exam:

Given 2 lists, the first representing installed packages and the second containing tuples representing the dependencies between packages (1 to 1), it outpts the useless packages for the already installed ones.

### Example

installed       dependencies          output

5               2 , 4       ----->   for p. 5 and 6 you need
6               5 , 6                [ 7 , 4 , 6 , 3 ] 
                6 , 7
                1 , 2
                5 , 4 
                4 , 3
