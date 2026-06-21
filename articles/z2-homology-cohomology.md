---
title: "ℤ₂-係数のホモロジーとコホモロジーについて考えたい"
emoji: "📈"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: false
---

## 概要

文献 [EH] を見ていくと、$\mathbb{Z}_2$-係数のホモロジーの話が出て来る[^1]。これとコホモロジーについて考えたい。

[^1]: 原文では _module 2 coefficients_ という書き方ではある。

## ホモロジーとコホモロジー関連の用語

### $p$-鎖群と $p$-双対鎖群

$K$ を単体複体とし、$p$ を次元とする。$p$-鎖群を

$$
\begin{align*}
    C_p = C_p (K) = \left\{\sum a_i \sigma_i;\ a_i \in \mathbb{Z}_2,\ \sigma_i: p\text{-simplices}\right\}
\end{align*}
$$

とする。$\mathbb{Z}_2$ は標数 2 の体であり、$C_p$ は基底を $\{\sigma_i\}$ とするようなベクトル空間でもある。

$p$-双対鎖群は $C^p = C^p (K) = \operatorname{Hom} (C_p, \mathbb{Z}_2)$ で定義される。$\{\sigma^j\} \subset C^p$ を $\{\sigma_i\}$ の双対基底、従って $\sigma^j (\sigma_i) = \delta_{ij}$ となるようにとることで、これを基底として $C^p$ も $\mathbb{Z}_2$-係数のベクトル空間になる。また、ベクトル空間としては $C^p = C_p^*$ という形で共役空間になっている。

### 境界作用素と双対境界作用素

準同型写像 $\partial_p: C_p \to C_{p-1}$ を単体 $\sigma = [u_0, u_1, \ldots, u_p]$ に対し

$$
\begin{align*}
    \partial_p \sigma = \sum_{j=0}^p [u_0, \ldots, u_{j-1}, u_{j+1}, \ldots, u_p]
\end{align*}
$$

で定め、これを境界作用素と呼ぶ。$C_p$ をベクトル空間と見る時には線型写像と呼んでも良いだろう。

$\sigma \in C_p$ と $\varphi \in C^p$ に対し $\varphi (\sigma) = \langle \sigma, \varphi \rangle$ と書くものとして、準同型写像 $\delta: C^{p-1} \to C^p$ を

$$
\begin{align*}
    \langle \partial \sigma, \varphi \rangle = \langle \sigma, \delta \varphi \rangle, \quad \sigma \ \in C_p,\ \varphi \in C^p
\end{align*}
$$

で定義する。

準備はこの程度とする。

## 内積空間としての $p$-鎖群

$\{\sigma_i\} \subset C_p$ と $\{\sigma^j\} \subset C^p$ という 2 つのベクトル空間の基底を考えた。これらの基底を結びつける $\iota: C_p \to C^p$

$$
\begin{align*}
    \iota: \sigma_i \mapsto \sigma^i
\end{align*}
$$

を考えると、$\iota$ のもとで $C_p$ と $C^p$ は自然にベクトル空間として同型になる。さらに、

$$
\begin{align*}
    (\sigma, \sigma^\prime)_p := \langle \sigma, \iota (\sigma^\prime) \rangle, \quad \sigma, \sigma^\prime \in C_p
\end{align*}
$$

によって、$C_p$ に内積 $(\cdot, \cdot)$ を導入できる。この時、$\sigma \in C_p,\ \sigma^\prime \in C_{p-1}$ に対して $\tilde{\delta} = \iota^{-1} \circ \delta \circ \iota$ と置くと、

$$
\begin{align*}
    (\partial \sigma, \sigma^\prime)_{p-1} &= \langle \partial \sigma, \iota (\sigma^\prime) \rangle \\
    &= \langle \sigma, (\delta \circ \iota) (\sigma^\prime) \rangle = \langle \sigma, \iota ((\iota^{-1} \circ \delta \circ \iota) (\sigma^\prime)) \rangle = (\sigma, \tilde{\delta} \sigma^\prime)_p
\end{align*}
$$

または、$\iota$ を省略し、$\tilde{\delta}$ を $\delta$ と混同することで、単に

$$
\begin{align*}
    (\partial \sigma, \sigma^\prime)_{p-1} = (\sigma, \delta \sigma^\prime)_p
\end{align*}
$$

と書ける。これによって、$\delta = \partial^*$ という記号がしっくり来るようになる。

## 参考文献

[EH] Herbert Edelsbrunner & John L. Harer, Computational Topology: An Introduction, Americal Mathematical Society, 2010
