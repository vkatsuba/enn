# enn
**enn** is small project of **Erlang 99 Problems**. Here provided a simple solution of **Erlang 99 Problems**.

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
  * [Problem 11](#problem-11)
  * [Problem 12](#problem-12)
  * [Problem 13](#problem-13)
  * [Problem 14](#problem-14)
  * [Problem 15](#problem-15)
  * [Problem 16](#problem-16)
  * [Problem 17](#problem-17)
  * [Problem 18](#problem-18)
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
1> p10:run([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).
[{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]
```

### Problem 11
(C) Modified run-length encoding.
Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the result list.
Only elements with duplicates are transferred as (N E) lists. **Example:**
```erlang
1> p11:run([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).
[{4,a},b,{2,c},{2,a},d,{4,e}]
```

### Problem 12
(C) Given a run-length code list generated as specified in problem P11. Construct its uncompressed version. **Example:**
```erlang
1> p12:run([{4, a}, b, {2, c}, {2, a}, d, {4, e}]).
[a,a,a,a,b,c,c,a,a,d,e,e,e,e]
```

### Problem 13
(C) Run-length encoding of a list (direct solution).
Implement the so-called run-length encoding data compression method directly.
I.e. don't explicitly create the sublists containing the duplicates, as in problem P09, but only count them.
As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X. **Example:**
```erlang
1> p13:run([{4, a}, {1, b}, {2, c}, {2, a}, {1, d}, {4, e}]).
[a,a,a,a,b,c,c,a,a,d,e,e,e,e]
```

### Problem 14
(C) Duplicate the elements of a list. **Example:**
```erlang
1> p14:run([a, b, c, d, e]).
[a,a,b,b,c,c,d,d,e,e]
```

### Problem 15
(C) Replicate the elements of a list a given number of times. **Example:**
```erlang
1> p15:run([a, b, c, d, e], 3).
[a,a,a,b,b,b,c,c,c,d,d,d,e,e,e]
```
### Problem 16
(C) Drop every N'th element from a list. **Example:**
```erlang
1> p16:run([a, b, c, d, e, f, g, h, i, k], 3).
[a,b,d,e,g,h,k]
```
### Problem 17
(C) Split a list into two parts; the length of the first part is given. **Example:**
```erlang
1> p17:run([a, b, c, d, e, f, g, h, i, k], 3).
[[a,b,c],[d,e,f,g,h,i,k]]
```

### Problem 18
(C) Extract a slice from a list.
Given two indices, I and K, the slice is the list containing the elements between the I'th and K'th element of the original list (both limits included).
Start counting the elements with 1. **Example:**
```erlang
1> p18:run([a, b, c, d, e, f, g, h, i, k], 3, 7).
[c,d,e,f,g]
```

### To be continued ...

## Support
v.katsuba.dev@gmail.com
