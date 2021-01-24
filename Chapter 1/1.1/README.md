# The Elements of Programming

This chapter also starts philosophically.  The author says programmig languages are yet another way to organize our thoughts and ideas of how to perform tasks. 

The author says we need three important elements: Simmilar to the quote in the previous chapter.

1. **Expressions**  - Simple things
2. **Combinations** - Ways to glue simple things into complex ones
3. **Abstractions** - Ways to take complex things & make them simpler

The "*things*" here  fall into two categories.  **Procedures** & **Data**. For this chapter we only have numerical data so that we can focus on procedures and the rules concerning them. 

## 1. Expressions

Expressions are the basic stuff. You write an expression, then evaluate it. Numbers are primitive expressions. A number on it's own is a valid scheme expression.

```scheme
1337
```

However, that's not really useful. You need to combine them with procedures like multiplying `*` adding `+` or dividing `\` . That's where things start to become interesting.

In scheme the notation used to combine things is *prefix notation*.  WIth it, the operator eg:`*` is put to the left of the  operrands eg: `10`. Here's an example

```scheme
( + 1 1 )
2 
( * 5 3 )
15
( / 8 2)
4
```

Everything is also put in brackets. This mean that there's no [ambiguity](https://plus.maths.org/content/pemdas-paradox) and you can have any number of arguments. you can nest everything. For example

```scheme
(+ (* 3 5) (- 10 6))
19
```

This can quickly become unreadable. 

```scheme
(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))
```

You can pretty print the code but it's still ugly. 

```scheme
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))
```



## 2. Naming and the Environment

In scheme, we define functions and variables with the `define` keyword. It's a procedure like `* or +` and uses prefix notation. To define variables:

```scheme
(define pi 3.14159)
(define radius 10)
```

You can then do interesting stuff with define. eg: formulas.

```scheme
(define circumference (* 2 pi radius))
circumference
62.8318
```

This is our first and simplest form of abstraction.

## 3. Evaluating Combinations

To evaluate an expression in scheme, you evaluate the subexpressions, then apply the operators to the  arguments/operands. This rule is recursive. 

This rule does not apply to everything.

**Self Evaluation** - Return the value

**Names** - Return value associated with that name in environment 

**Special Forms** - Do something special.

**Combinations** 

1. Evaluate all the subexpressions(recursive).
2. Apply the operator to the to the operrands/arguments and return the result.



## Read eval print loop

### 1.  Combinations/expression

```yaml
visible world: (+ 3 3 )

execution world: 
	- Read # read the internal value of for expression
	- Eval # evaluate the value of expression. It may be recursive
	- Print #Ouptput result .Not necessary

visible world: 9       
```
### 2.  Self Evaluation
```yaml
visible world: 23

execution world: 
	- read
	- eval #Self evaluating 23
	- print # Output to screen
visible world: 23   
```

### 3. Names

All our primitive expressions`+ * - / > <` are names. Variables made by define are also names. 

```yaml
visible world: pi

execution world:
	- read
	- eval #Look up value (3.14)
	- print
visible world: 3.14
```



### 4. Special forms: define

```yaml
visible world: (define circumference (* 2 pi radius))

execution world:
	- read
	- Eval #Only for the second expression (* 2 pi radius)
	- associate first operrand to value #(* 2 pi radius))

visible world: # blank
```