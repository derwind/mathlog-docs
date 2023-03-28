# 集合と写像と逆像

## 概要

他の記事用に集合$X$,$Y$の間の写像$f:X \to Y$の性質について軽くまとめたい。

## 本文

$X$,$Y$を空でない集合とし、写像$f:X \to Y$を考える。この時、$f$の逆を任意の$B \subset Y$に対して以下のように定める。

$$
\begin{align*}
f^{-1}(B) := \{ x \in X; f(x) \in B \}
\end{align*}
$$

この時、以下が成立する:

1. $f^{-1}(B^c) = \left( f^{-1}(B) \right)^c$,
1. $f^{-1}(\cup_{i \in I} B_i) = \cup_{i \in I} f^{-1}(B_i)$
1. $f^{-1}(\cap_{i \in I} B_i) = \cap_{i \in I} f^{-1}(B_i)$

## 証明

1. $x \in f^{-1}(B^c)$をとると、$f(x) \in B^c \iff f(x) \not\in B$となる。これは$x \not\in f^{-1}(B) \iff x \in \left(f^{-1}(B) \right)^c$である。よって、$f^{-1}(B^c) \subset \left(f^{-1}(B) \right)^c$。これを逆に辿って反対の包含関係を得る。

2. $x \in f^{-1}(\cup_{i \in I} B_i)$をとる。この時、$f(x) \in \cup_{i \in I} B_i \iff f(x) \in \exists B_{i_0}$となる。よって、$x \in f^{-1}(B_{i_0})$。故に、$x \in \cup_{i \in I} f^{-1}(B_i)$なので、$f^{-1}(\cup_{i \in I} B_i) \subset \cup_{i \in I} f^{-1}(B_i)$を得た。これを逆に辿って反対の包含関係を得る。

3. $x \in f^{-1}(\cap_{i \in I} B_i)$をとる。この時、$f(x) \in \cap_{i \in I} B_i \iff f(x) \in \forall B_i$となる。よって、$x \in f^{-1}(B_i),\ \forall i$。故に、$x \in \cap_{i \in I} f^{-1}(B_i)$なので、$f^{-1}(\cap_{i \in I} B_i) \subset \cap_{i \in I} f^{-1}(B_i)$を得た。これを逆に辿って反対の包含関係を得る。
