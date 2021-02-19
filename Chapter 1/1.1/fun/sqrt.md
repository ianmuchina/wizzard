# Reading SICP: Square roots

How do computers calculate the square roots on the fly?

>  Make lots of (calculated)guesses, until you arrive at a good enough answer

## The Procedure

1. Make an initial guess
2. If it's good enough: Stop & return the value; Otherwise, continue
3. Improve the guess
4. Go to step 2


## The Initial Guess

The initial guess will be 1. It mattes but not so much.

## Improving a guess

Here's a formula to improve a guess.  y is the guess and x is the number whose square root we are trying to calculate.



![](./equation.svg)



## Example

```
Guess = 1
(1 + ( 64 / 1)) / 2 = 32.5
Guess = 32.5
(32.5 + ( 64 / 32.5)) / 2
= 17.234615384615385
(17.234615384615385 + ( 64 / 17.234615384615385)) / 2
=   10.474036101145005
(10.474036101145005 + ( 64 / 10.474036101145005)) / 2
=   8.292191785986859
(8.292191785986859 + ( 64 / 8.292191785986859)) / 2
=   8.005147977880979
(8.005147977880979 + ( 64 / 8.005147977880979)) / 2
=   8.000001655289593
(8.000001655289593 + ( 64 / 8.000001655289593)) / 2
=   8.00000000000017
(8.00000000000017 + ( 64 / 8.00000000000017)) / 2
=   8
Good Enough

```