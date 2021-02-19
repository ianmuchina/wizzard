# 1. Building Abstractions with Procedures

## Notes

Quote from 1690 about abstraction:

>  We humans do 3 with ideas:
> 1. Combine simple ones into complex ones
> 2. Compare ideas with each other
> 3. Abstract *(Simplify)* complicated ones

---

The first chapter starts with a philosophical take on the computer process. It's compared with a spirit. It lives inside the computer. It can't be touched or seen, but very real. It is able to think in it's own special way. It controls important parts of our lives and can have a huge impact on the world. 

This observation from 1985 still holds true.

![](https://memegenerator.net/img/instances/82411119/till-this-day.jpg)

Learning to write programs is like learning how to write spells. You learn slowly how to command the spirit that lives inside the computer. You must be able to predict the effects what you conjure. Small mistakes can have unexpected errors. They are not dangerous in a learning environment. However,  errors in real world programs, nowadays called production code can lead to catastrophic effects. 

Of course The expert software *engineers*  know how to handle the errors.

![](https://cdn131.picsart.com/326537528119201.jpg)

## LISP

The language used in the book is `LISP` . The name Is an acronym for LISt Processing. It's an old language from 1950 *(only Fortran is older)*. It has lots of versions/dialects & it keeps on evolving.

It's not a mainstream language. However the authors say it's the best language to teach sicp. They gave some reasons but I don't  quite get it yet. You can write compilers & interpreters in LISP so this should be fun. 

## Setup

I'm on debian so I did an `apt install racket` to get the racket interpreter. For my editor I used `vscode` with the [Magic Racket](https://marketplace.visualstudio.com/items?itemName=evzen-wybitul.magic-racket)  extension & the [bracket pair colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer) extension.

I found the best racket package, called [sicp](https://docs.racket-lang.org/sicp-manual/SICP_Language.html) for studying  this book. 

To install it:

```
raco pkg install sicp
```
To use it, add this line at the start of every program.
```racket
#lang sicp
```

Next  [1.1The Elements of Programming](./1.1/README.md)
