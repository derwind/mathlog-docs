---
title: "ℤ₂-係数のコホモロジーの双対境界作用素の像について考えたい"
emoji: "📈"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: false
---

## 概要

文献 [EH] を見ていくと、$\mathbb{Z}_2$-係数のホモロジーの話が出て来る[^1]。これとコホモロジーについて考えたい。特にコホモロジーの双対境界作用素の像について計算してみたい。

[^1]: 原文では _module 2 coefficients_ という書き方ではある。

## ホモロジーとコホモロジー関連の用語

### $p$-鎖群と $p$-双対鎖群

$K$ を単体複体とし、$p$ を次元とする。$p$-鎖群を

$$
\begin{align*}
    C_p = C_p (K) = \left\{\sum a_i \sigma_i;\ a_i \in \mathbb{Z}_2,\ \sigma_i: p\text{-simplices}\right\}
\end{align*}
$$

とする。$\mathbb{Z}_2$ は（標数 2 の）体であり、$C_p$ は基底を $\{\sigma_i\}$ とするようなベクトル空間でもある。

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

(1) $\{\sigma_i\} \subset C_p$ と $\{\sigma^j\} \subset C^p$ という 2 つのベクトル空間の基底を考えた。これらの基底を結びつける $\iota: C_p \to C^p$ として、

$$
\begin{align*}
    \iota: \sigma_i \mapsto \sigma^i
\end{align*}
$$

を考えると、$\iota$ のもとで $C_p$ と $C^p$ は自然にベクトル空間として同型になる。

(2) さらに、

$$
\begin{align*}
    (\sigma, \sigma^\prime)_p := \langle \sigma, \iota (\sigma^\prime) \rangle, \quad \sigma, \sigma^\prime \in C_p
\end{align*}
$$

によって、$C_p$ に内積 $(\cdot, \cdot)$ を導入できる。

(3) また、$\sigma_i \in C_p$ と $\sigma^j \in C_p$ をとると

$$
\begin{align*}
    (\sigma_i, \sigma_j) = \langle \sigma_i, \iota (\sigma_j) \rangle =  \langle \sigma_i, \sigma^j \rangle = \delta_{ij}
\end{align*}
$$

となるので、$\{\sigma_i\}$ は $C_p$ の “正規直交基底” になっていることが分かる。

(4) 次に、$\sigma \in C_p,\ \sigma^\prime \in C_{p-1}$ に対して $\tilde{\delta} = \iota^{-1} \circ \delta \circ \iota$ と置くと、

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

と書ける。これによって、$\delta = \partial^*$ という記号がしっくり来るようになる。またこの時 $\delta: C_{p-1} \to C_p$ と考えることができる。

## 双対境界作用素 $\delta$ の像

単体 $\sigma = [u_1, u_2, \ldots, u_p] \in C_p$ の $\delta$ による像を考えたい。少なくともこれは $C_{p+1}$ に入るので、$C_{p+1}$ の $(p+1)$-単体からなる基底を $\{\tau_i\}$ として、

$$
\begin{align*}
    \delta \sigma = \sum b_i \tau_i
\end{align*}
$$

と書ける。ここで $\{\tau_i\}$ は $C_{p+1}$ の正規直交基底であるので、$b_i = (\tau_i, \delta \sigma)_{p+1}$ であることが分かる。すなわち、

$$
\begin{align*}
    \delta \sigma = \sum (\tau_i, \delta \sigma)_{p+1} \tau_i
\end{align*}
$$

という展開を得る。

ここで興味があるのは $(\tau_i, \delta \sigma)_{p+1} \in \mathbb{Z}_2$ が消えない場合である。つまり $(\tau_i, \delta \sigma)_{p+1} = 1$ の場合である。従って、

$$
\begin{align*}
    1 = (\tau_i, \delta \sigma)_{p+1} = (\partial \tau_i, \sigma)_p
\end{align*}
$$

である。$\tau_i = [v_1, \ldots, v_{p+1}]$ と置くと、$\partial \tau_i = \sum_k [v_1, \ldots, v_{k-1}, v_{k+1}, \ldots, v_{p+1}]$ であった。$\{\sigma_i\}$ を $C_p$ の正規直交基底として、各 $k$ に対して相異なる $[v_1, \ldots, v_{k-1}, v_{k+1}, \ldots, v_{p+1}] \in \{\sigma_i\}$ であり、$\sigma \in \{\sigma_i\}$ でもある。したがって、ある $k$ に対して $[v_1, \ldots, v_{k-1}, v_{k+1}, \ldots, v_{p+1}] = \sigma$ となることが $(\tau_i, \delta \sigma)_{p+1} = 1$ の必要十分条件である。

よって以下の定理を得た。

**定理**

単体 $\sigma \in C_p$ の $\delta$ による像は、$(p+1)$-鎖であってその境界に $\sigma$ を含むような単体からなるものである。

## まとめ

それはそうだろうなという結果を得ることができた。きっと色々と文献を漁ればでてくる程度の話であろうが、Hilbert 空間論の Riesz の表現定理にインスパイアされる形のストーリーと記述で導出してみた。

## 余談

特に陽にはホモロジーやコホモロジーの言葉は出していないが、文献 [KFM] pp.68-72 辺りの反復符号や表面符号の話で出て来る $\partial$ と $\delta$ は境界作用素と双対境界作用素を強く意識している気がする。これを含め量子誤り訂正符号の文脈でホモロジー代数を活用しているものに文献 [D] や [F] があるようだ。

## 参考文献

[EH] Herbert Edelsbrunner & John L. Harer, Computational Topology: An Introduction, Americal Mathematical Society, 2010

[KFM] 小柴健史 & 藤井啓祐 & 森前智行, 観測に基づく量子計算, コロナ社, 2017

[D] Nicolas Delfosse, Decoding color codes by projection onto surface codes, arXiv:1308.6207, 2013

[F] Keisuke Fujii, Quantum Computation with Topological Codes, arXiv:1504.01444, 2015
