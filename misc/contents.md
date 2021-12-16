# Structure and Interpretation

of Computer Programs

<div class="subtitle">

Second Edition  
Unofficial Texinfo Format 2.andresraba6.6

**Harold Abelson and Gerald Jay Sussman with Julie Sussman, foreword by
Alan J. Perlis**

©1996 by The Massachusetts Institute of Technology

SVG

SVG

SVG

This work is licensed under a Creative Commons Attribution-ShareAlike
4.0 International License ([CC
BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/)). Based on a
work at [mitpress.mit.edu](http://mitpress.mit.edu/sicp/).

The MIT Press  
Cambridge, Massachusetts  
London, England

McGraw-Hill Book Company  
New York, St. Louis, San Francisco,  
Montreal, Toronto

This book is one of a series of texts written by faculty of the
Electrical Engineering and Computer Science Department at the
Massachusetts Institute of Technology. It was edited and produced by The
MIT Press under a joint production-distribution arrangement with the
McGraw-Hill Book Company.

Unofficial Texinfo Format
[2.andresraba6.6](http://sicpebook.wordpress.com) (September 16, 2015),
based on [2.neilvandyke4](http://www.neilvandyke.org/sicp-texi/)
(January 10, 2007).

## Short Table of Contents

<div class="shortcontents">

- [Unofficial Texinfo Format](#toc-Unofficial-Texinfo-Format)
- [Dedication](#toc-Dedication-1)
- [Foreword](#toc-Foreword-1)
- [Preface to the Second Edition](#toc-Preface-to-the-Second-Edition)
- [Preface to the First Edition](#toc-Preface-to-the-First-Edition)
- [Acknowledgments](#toc-Acknowledgments-1)
- [1 Building Abstractions with
  Procedures](#toc-Building-Abstractions-with-Procedures)
- [2 Building Abstractions with
  Data](#toc-Building-Abstractions-with-Data)
- [3 Modularity, Objects, and
  State](#toc-Modularity_002c-Objects_002c-and-State)
- [4 Metalinguistic Abstraction](#toc-Metalinguistic-Abstraction)
- [5 Computing with Register
  Machines](#toc-Computing-with-Register-Machines)
- [References](#toc-References-1)
- [List of Exercises](#toc-List-of-Exercises)
- [List of Figures](#toc-List-of-Figures)
- [Term Index](#toc-Term-Index-1)
- [Colophon](#toc-Colophon-1)

## Table of Contents

<div class="contents">

- [Unofficial Texinfo Format](UTF.xhtml)
- [Dedication](Dedication.xhtml)
- [Foreword](Foreword.xhtml)
- [Preface to the Second Edition](Preface.xhtml)
- [Preface to the First Edition](Preface-1e.xhtml)
- [Acknowledgments](Acknowledgments.xhtml)
- [1 Building Abstractions with Procedures](Chapter-1.xhtml)
  - [1.1 The Elements of Programming](1_002e1.xhtml)
    - [1.1.1 Expressions](1_002e1.xhtml)
    - [1.1.2 Naming and the
      Environment](1_002e1.xhtml)
    - [1.1.3 Evaluating
      Combinations](1_002e1.xhtml)
    - [1.1.4 Compound Procedures](1_002e1.xhtml)
    - [1.1.5 The Substitution Model for Procedure
      Application](1_002e1.xhtml)
    - [1.1.6 Conditional Expressions and
      Predicates](1_002e1.xhtml)
    - [1.1.7 Example: Square Roots by Newton’s
      Method](1_002e1.xhtml)
    - [1.1.8 Procedures as Black-Box
      Abstractions](1_002e1.xhtml)
  - [1.2 Procedures and the Processes They
    Generate](1_002e2.xhtml)
    - [1.2.1 Linear Recursion and
      Iteration](1_002e2.xhtml)
    - [1.2.2 Tree Recursion](1_002e2.xhtml)
    - [1.2.3 Orders of Growth](1_002e2.xhtml)
    - [1.2.4 Exponentiation](1_002e2.xhtml)
    - [1.2.5 Greatest Common
      Divisors](1_002e2.xhtml)
    - [1.2.6 Example: Testing for
      Primality](1_002e2.xhtml)
  - [1.3 Formulating Abstractions with Higher-Order
    Procedures](1_002e3.xhtml)
    - [1.3.1 Procedures as
      Arguments](1_002e3.xhtml)
    - [1.3.2 Constructing Procedures Using
      `Lambda`](1_002e3.xhtml)
    - [1.3.3 Procedures as General
      Methods](1_002e3.xhtml)
    - [1.3.4 Procedures as Returned
      Values](1_002e3.xhtml)
- [2 Building Abstractions with Data](Chapter-2.xhtml)
  - [2.1 Introduction to Data Abstraction](2_002e1.xhtml)
    - [2.1.1 Example: Arithmetic Operations for Rational
      Numbers](2_002e1.xhtml)
    - [2.1.2 Abstraction Barriers](2_002e1.xhtml)
    - [2.1.3 What Is Meant by
      Data?](2_002e1.xhtml)
    - [2.1.4 Extended Exercise: Interval
      Arithmetic](2_002e1.xhtml)
  - [2.2 Hierarchical Data and the Closure
    Property](2_002e2.xhtml)
    - [2.2.1 Representing
      Sequences](2_002e2.xhtml)
    - [2.2.2 Hierarchical
      Structures](2_002e2.xhtml)
    - [2.2.3 Sequences as Conventional
      Interfaces](2_002e2.xhtml)
    - [2.2.4 Example: A Picture
      Language](2_002e2.xhtml)
  - [2.3 Symbolic Data](2_002e3.xhtml)
    - [2.3.1 Quotation](2_002e3.xhtml)
    - [2.3.2 Example: Symbolic
      Differentiation](2_002e3.xhtml)
    - [2.3.3 Example: Representing
      Sets](2_002e3.xhtml)
    - [2.3.4 Example: Huffman Encoding
      Trees](2_002e3.xhtml)
  - [2.4 Multiple Representations for Abstract
    Data](2_002e4.xhtml)
    - [2.4.1 Representations for Complex
      Numbers](2_002e4.xhtml)
    - [2.4.2 Tagged data](2_002e4.xhtml)
    - [2.4.3 Data-Directed Programming and
      Additivity](2_002e4.xhtml)
  - [2.5 Systems with Generic Operations](2_002e5.xhtml)
    - [2.5.1 Generic Arithmetic
      Operations](2_002e5.xhtml)
    - [2.5.2 Combining Data of Different
      Types](2_002e5.xhtml)
    - [2.5.3 Example: Symbolic
      Algebra](2_002e5.xhtml)
- [3 Modularity, Objects, and State](Chapter-3.xhtml)
  - [3.1 Assignment and Local State](3_002e1.xhtml)
    - [3.1.1 Local State
      Variables](3_002e1.xhtml)
    - [3.1.2 The Benefits of Introducing
      Assignment](3_002e1.xhtml)
    - [3.1.3 The Costs of Introducing
      Assignment](3_002e1.xhtml)
  - [3.2 The Environment Model of
    Evaluation](3_002e2.xhtml)
    - [3.2.1 The Rules for
      Evaluation](3_002e2.xhtml)
    - [3.2.2 Applying Simple
      Procedures](3_002e2.xhtml)
    - [3.2.3 Frames as the Repository of Local
      State](3_002e2.xhtml)
    - [3.2.4 Internal Definitions](3_002e2.xhtml)
  - [3.3 Modeling with Mutable Data](3_002e3.xhtml)
    - [3.3.1 Mutable List
      Structure](3_002e3.xhtml)
    - [3.3.2 Representing Queues](3_002e3.xhtml)
    - [3.3.3 Representing Tables](3_002e3.xhtml)
    - [3.3.4 A Simulator for Digital
      Circuits](3_002e3.xhtml)
    - [3.3.5 Propagation of
      Constraints](3_002e3.xhtml)
  - [3.4 Concurrency: Time Is of the
    Essence](3_002e4.xhtml)
    - [3.4.1 The Nature of Time in Concurrent
      Systems](3_002e4.xhtml)
    - [3.4.2 Mechanisms for Controlling
      Concurrency](3_002e4.xhtml)
  - [3.5 Streams](3_002e5.xhtml)
    - [3.5.1 Streams Are Delayed
      Lists](3_002e5.xhtml)
    - [3.5.2 Infinite Streams](3_002e5.xhtml)
    - [3.5.3 Exploiting the Stream
      Paradigm](3_002e5.xhtml)
    - [3.5.4 Streams and Delayed
      Evaluation](3_002e5.xhtml)
    - [3.5.5 Modularity of Functional Programs and Modularity of
      Objects](3_002e5.xhtml)
- [4 Metalinguistic Abstraction](Chapter-4.xhtml)
  - [4.1 The Metacircular Evaluator](4_002e1.xhtml)
    - [4.1.1 The Core of the
      Evaluator](4_002e1.xhtml)
    - [4.1.2 Representing
      Expressions](4_002e1.xhtml)
    - [4.1.3 Evaluator Data
      Structures](4_002e1.xhtml)
    - [4.1.4 Running the Evaluator as a
      Program](4_002e1.xhtml)
    - [4.1.5 Data as Programs](4_002e1.xhtml)
    - [4.1.6 Internal Definitions](4_002e1.xhtml)
    - [4.1.7 Separating Syntactic Analysis from
      Execution](4_002e1.xhtml)
  - [4.2 Variations on a Scheme — Lazy
    Evaluation](4_002e2.xhtml)
    - [4.2.1 Normal Order and Applicative
      Order](4_002e2.xhtml)
    - [4.2.2 An Interpreter with Lazy
      Evaluation](4_002e2.xhtml)
    - [4.2.3 Streams as Lazy
      Lists](4_002e2.xhtml)
  - [4.3 Variations on a Scheme — Nondeterministic
    Computing](4_002e3.xhtml)
    - [4.3.1 Amb and Search](4_002e3.xhtml)
    - [4.3.2 Examples of Nondeterministic
      Programs](4_002e3.xhtml)
    - [4.3.3 Implementing the `Amb`
      Evaluator](4_002e3.xhtml)
  - [4.4 Logic Programming](4_002e4.xhtml)
    - [4.4.1 Deductive Information
      Retrieval](4_002e4.xhtml)
    - [4.4.2 How the Query System
      Works](4_002e4.xhtml)
    - [4.4.3 Is Logic Programming Mathematical
      Logic?](4_002e4.xhtml)
    - [4.4.4 Implementing the Query
      System](4_002e4.xhtml)
      - [4.4.4.1 The Driver Loop and
        Instantiation](4_002e4.xhtml)
      - [4.4.4.2 The
        Evaluator](4_002e4.xhtml)
      - [4.4.4.3 Finding Assertions by Pattern
        Matching](4_002e4.xhtml)
      - [4.4.4.4 Rules and
        Unification](4_002e4.xhtml)
      - [4.4.4.5 Maintaining the Data
        Base](4_002e4.xhtml)
      - [4.4.4.6 Stream
        Operations](4_002e4.xhtml)
      - [4.4.4.7 Query Syntax
        Procedures](4_002e4.xhtml)
      - [4.4.4.8 Frames and
        Bindings](4_002e4.xhtml)
- [5 Computing with Register Machines](Chapter-5.xhtml)
  - [5.1 Designing Register Machines](5_002e1.xhtml)
    - [5.1.1 A Language for Describing Register
      Machines](5_002e1.xhtml)
    - [5.1.2 Abstraction in Machine
      Design](5_002e1.xhtml)
    - [5.1.3 Subroutines](5_002e1.xhtml)
    - [5.1.4 Using a Stack to Implement
      Recursion](5_002e1.xhtml)
    - [5.1.5 Instruction Summary](5_002e1.xhtml)
  - [5.2 A Register-Machine Simulator](5_002e2.xhtml)
    - [5.2.1 The Machine Model](5_002e2.xhtml)
    - [5.2.2 The Assembler](5_002e2.xhtml)
    - [5.2.3 Generating Execution Procedures for
      Instructions](5_002e2.xhtml)
    - [5.2.4 Monitoring Machine
      Performance](5_002e2.xhtml)
  - [5.3 Storage Allocation and Garbage
    Collection](5_002e3.xhtml)
    - [5.3.1 Memory as Vectors](5_002e3.xhtml)
    - [5.3.2 Maintaining the Illusion of Infinite
      Memory](5_002e3.xhtml)
  - [5.4 The Explicit-Control Evaluator](5_002e4.xhtml)
    - [5.4.1 The Core of the Explicit-Control
      Evaluator](5_002e4.xhtml)
    - [5.4.2 Sequence Evaluation and Tail
      Recursion](5_002e4.xhtml)
    - [5.4.3 Conditionals, Assignments, and
      Definitions](5_002e4.xhtml)
    - [5.4.4 Running the
      Evaluator](5_002e4.xhtml)
  - [5.5 Compilation](5_002e5.xhtml)
    - [5.5.1 Structure of the
      Compiler](5_002e5.xhtml)
    - [5.5.2 Compiling
      Expressions](5_002e5.xhtml)
    - [5.5.3 Compiling
      Combinations](5_002e5.xhtml)
    - [5.5.4 Combining Instruction
      Sequences](5_002e5.xhtml)
    - [5.5.5 An Example of Compiled
      Code](5_002e5.xhtml)
    - [5.5.6 Lexical Addressing](5_002e5.xhtml)
    - [5.5.7 Interfacing Compiled Code to the
      Evaluator](5_002e5.xhtml)
- [References](References.xhtml)
- [List of Exercises](Exercises.xhtml)
- [List of Figures](Figures.xhtml)
- [Term Index](Term-Index.xhtml)
- [Colophon](Colophon.xhtml)

[(dir)](../index.xhtml)

# Top

[(dir)](../index.xhtml)
