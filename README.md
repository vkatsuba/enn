# enn
**enn** is small project of **Erlang 99 Problems**

## Contents
* [Goals](#goals)
* [Build & Run](#build--run)
* [Documentation](#documentation)
* [Erlang 99 Problems](#erlang-99-problems)
  * [Problem 01](#problem-01)
  * [Problem 02](#problem-02)
  * [Problem 03](#problem-03)
  * [Problem 04](#problem-04)
  * [Problem 05](#problem-05)
  * [Problem 06](#problem-06)
  * [Problem 07](#problem-07)
  * [Problem 08](#problem-08)
  * [Problem 09](#problem-09)
  * [Problem 10](#problem-10)
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

## Erlang 99 Problems

### Problem 01
(C) Find the last box of a list. **Example:**
```erlang
1> p01:run([a, b, c, d]).
d
```

### Problem 02
(C) Find the last but one box of a list. **Example:**
```erlang
1> p02:run([a, b, c, d]).
[c,d]
```

### Problem 03
(C) Find the K'th element of a list. **Example:**
```erlang
1> p03:run([a, b, c, d, e], 3).
с
```

### Problem 04
(C) Find the number of elements of a list. **Example:**
```erlang
1> p04:run([a, b, c, d, e]).
5
```

### Problem 05
(C) Reverse a list. **Example:**
```erlang
1> p05:run([a, b, c, d, e]).
[e,d,c,b,a]
```

### Problem 06
(C) Find out whether a list is a palindrome. **Example:**
```erlang
1> p06:run([a, b, c, b, a]).
true
```

### Problem 07
(C) Flatten a nested list structure. **Example:**
```erlang
1> p07:run([[[a]], b, c, [d, [[e]]]]).
[a,b,c,d,e]
```

### Problem 08
(C) Eliminate consecutive duplicates of list elements. **Example:**
```erlang
1> p08:run([a, a, a, b, b, b, b, c, d, d, d, d, e, e, e]).
[a,b,c,d,e]
```

### Problem 09
(C) Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists. **Example:**
```erlang
1> p09:run([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).
[[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]
```

### Problem 10
(C) Run-length encoding of a list.
Use the result of problem P09 to implement the so-called run-length encoding data compression method.
Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E. **Example:**
```erlang
1> p10:run([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
[{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]
```

### To be continued ...

## Support
v.katsuba.dev@gmail.com
