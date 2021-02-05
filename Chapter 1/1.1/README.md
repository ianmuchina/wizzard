# The Elements of Programming

This chapter also starts philosophically.  The author says programming languages are yet another way to organize our thoughts and ideas of how to perform tasks. 

The author says we need three important elements: Similar to the quote in the previous chapter.

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

In scheme the notation used to combine things is *prefix notation*.  With it, the operator eg:`*` is put to the left of the  operands eg: `10`. Here's an example

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



Kinds of expressions:

* Numbers
* Symbols 
* Combinations
* Definitions - Special
* conditionals  - Special forms
* Lambda λ expressions (wut) ?? - Special



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

## 3. Rules for Evaluating Combinations

To evaluate an expression in scheme, you 

1. Evaluate the subexpressions, then 
2. Apply the operators to the  arguments/operands. This rule is recursive. 

#### Substitution rule

To Evaluate a Combination, these are the steps.

1. Evaluate all the subexpressions(recursive).
2. Apply the operator to the to the operands/arguments and return the result.

```yaml
evaluate:
  operator:  # get procedure
  operrands: # get arguments
  
apply: #procedure to arguments
  # How?
  copy:  #body of procedure:
  	substitute:  #params with arguments
  evaluate: #This is where the recursion comes
```

Example:
```scheme
; Defintions: Special form that return #procedures
(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

;Usage
(sum-of-squares 3 4)

;  Evaluate
(sum-of-squares 3 4)

;; 1. Copy The body
(+ (square x) (square y))

;; 2. Substitute the elements
(+ (square 3) (square 4))

;; 3. Evaluate (recursive)
  ;; 1.Copy The body
  (* x x) (* x x)

  ;; 2.Substitute the elements
  (+ (* 3 3) (* 4 4))
  ;; 3.Evaluate (recursive)
      (+ (* 3 3) (* 4 4))
      (+ 9 16)
      25; Answer
```

This rule does not apply to everything.

**Self Evaluation** - Return the value

**Names** - Return value associated with that name in environment 

**Special Forms** - Do something special. eg: definitions and conditionals.






## 4. Compound Procedures

#### Recap

There are some important building blocks that a language needs. In lisp we have these so far:

* Numbers and math operators like `+`. They are formally called data & procedures. The authors say they aren't  so different. 
* A means of combining them. In lisp we use brackets `()`
* Variables to bind names with values. They allow us to abstract away complexity.



###  Procedure definitions

They are called *functions* in modern languages. In LISP, they are created with the `define` Keyword. It's interesting that variables and functions are made with the same keyword. They allow us to treat compound operations as one single unit.

The first example given is squaring numbers. To do so, multiply a number by itself. This is written in lisp like this.

```scheme
(define (square x) 
  		(* x x))
```

The formal syntax is as follows:

```scheme
(define ((name) (parameters)) 
  		(body))
```
* name: What the function will be called in the environment.
* parameters: the names we will use to refer to the arguments inside the body.
*  body: the complex magic you want to simplify.

It's a bit similar to other languages, just with funky syntax

```javascript
function square(x) {
    return (x * x)
}
```
```python
def square(x):
    return x * x
```



## 5. Evaluation steps

The book introduces 2 different ways of evaluating expressions The one we will use is the Substitution model. 


## 6 . Conditionals

Conditionals are another special procedure

Syntax if the `if` procedure

```scheme
(if (predicate) (consequent) (alternative)
```

predicate can be simple `<` , `=` , `>`. It can also have logical operators like `or` `not` & `and`. These are special procedures. 

The `cond` procedure are similar to ifs in some way .They have multiple predicates and no alternative. 

```scheme
(cond ((p1) (e1)
      ((p2) (e2))

```

**Predicate** -  A procedure that returns true or false.



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

All our primitive expressions`+ * - / > <` are names. Variables made by `define` are also names. Define itself is not a name.

```yaml
visible world: pi

execution world:
  - read
  - eval #Look up value (3.14)
  - print
visible world: 3.14
```


### 4. Special forms: `define`

`define` is the first special form we have encountered.

```yaml
visible world: (define circumference (* 2 pi radius))
execution world:
  - read
  - Eval #Only for the second expression (* 2 pi radius)
  - associate first operrand to value #(* 2 pi radius))

visible world: # blank
```

