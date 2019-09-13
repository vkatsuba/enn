# enn
**enn** is small project of **Erlang 99 Problems**

## Contents
* [Goals](#goals)
* [Build & Run](#build--run)
* [Documentation](#documentation)
* [Problem 01](#problem-01)
* [Problem 02](#problem-02)
* [Problem 03](#problem-03)
* [Problem 04](#problem-04)
* [Problem 05](#problem-05)
* [Problem 06](#problem-06)
* [Support](#support)

## Goals
**enn** aims to provide a simple solutions of **Erlang Ninety Nine Problems**

## Build & Run
```sh
$ git clone https://github.com/vkatsuba/enn.git
$ cd enn
$ make
```
## Documentation
* The examples of 99 problems was get from [Ninety-Nine Lisp Problems](http://www.ic.unicamp.br/~meidanis/courses/mc336/2006s2/funcional/L-99_Ninety-Nine_Lisp_Problems.html)

## Problem 01
(C) Find the last box of a list. **Example:**
```erlang
1> p01:run([a, b, c, d]).
d
```

## Problem 02
(C) Find the last but one box of a list. **Example:**
```erlang
1> p02:run([a, b, c, d]).
[c,d]
```

## Problem 03
(C) Find the K'th element of a list. **Example:**
```erlang
1> p03:run([a, b, c, d, e], 3).
с
```

## Problem 04
(C) Find the number of elements of a list. **Example:**
```erlang
1> p04:run([a, b, c, d, e]).
5
```

## Problem 05
(C) Reverse a list. **Example:**
```erlang
1> p05:run([a, b, c, d, e]).
[e,d,c,b,a]
```

## Problem 06
(C) Find out whether a list is a palindrome. **Example:**
```erlang
1> p06:run([a, b, c, b, a]).
true
```

### To be continued ...

## Support
v.katsuba.dev@gmail.com
