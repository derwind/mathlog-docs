# Borel可測函数

## 概要

$\R^d\ (d \geq 1)$の開集合の全体$\mathscr{O}(\R^d)$を含む最小の$\sigma$-加法族、すなわちBorel集合族$\mathscr{B} := \mathscr{B}(\R^d)$を考える。

## 定義

$f:\R^d \to \R$ がBorel可測函数であるとは、任意の$a \in \R$に対して$\{x; f(x) > a\} \in \mathscr{B}$が成り立つ時を言う。

## 命題

$f:\R^d \to \R$をBorel可測函数であるとする。この時、任意の$b < a \in \R$に対して以下が成立する:

1. $\{x; f(x) \leq a\} \in \mathscr{B}$
2. $\{x; b < f(x) \leq a\} \in \mathscr{B}$
3. $\{x; f(x) = a\} \in \mathscr{B}$
4. $\{x; f(x) < a\} \in \mathscr{B}$

## 証明

[集合と写像と逆像](https://mathlog.info/articles/4103)の主張を自由に使う。

1. $\{x; f(x) \leq a\} = \{x; f(x) > a\}^c \in \mathscr{B}$となる。

2. $\{x; b < f(x) \leq a\} = \{x; f(x) > b\} \cap \{x; f(x) \leq a\} = \left( \{x; f(x) \leq b\} \cup \{x; f(x) > a\} \right)^c \in \mathscr{B}$となる。

3. $\{x; f(x) = a\} = \cap_{n \in \N} \{x; a - \frac{1}{n} < f(x) \leq a\} = \cup_{n \in \N} \{x; a - \frac{1}{n} < f(x) \leq a\}^c \in \mathscr{B}$となる。

4. $\{x; f(x) < a\} = \{x; f(x) \leq a\} \cap \{x; f(x) = a\} \in \mathscr{B}$となる。

## 余談

Borel集合族が**補集合について閉じている**という性質を使いまくると、$\{x; f(x) > a\} \in \mathscr{B}$という条件だけで「これくらいは成立して欲しいよな」という数々の性質が導けてしまう。
