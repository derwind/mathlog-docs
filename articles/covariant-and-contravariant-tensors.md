---
title: "共変と反変テンソルについて整理したい"
emoji: "📈"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: []
published: false
---

## 概要

相対論や微分幾何の本を読んでいると共変テンソルとか反変テンソルとか出て来てよく分からなくなるので、何番煎じか分からないけど自分メモ的に整理してみたい。

ごちゃごちゃ考えた結果を書き出しているだけで、大したことの内容であるにも関わらず冗長で、計算を追うメリットも特にないので、明らかに普通の適当な教科書を見つけて読むほうが良い。

## はじめに

素朴なところから入りたい。いわゆる Einstein の規約というものがあって、今回悩んでいるような記号が出て来る本ではこれをわりと見かける。ベクトル $v$, $w$ と行列 $A$ があるとして、とりあえず **一切深い意味は考えずに** 以下のように本来は左のような意味の式、右のような略記で書ける省略記法がある。つまり、**斜めに対応し合うインデックスについて足し合わせる** ということである。

$$
\begin{align*}
\sum_i v_i w^i \leftrightsquigarrow v_i w^i
\end{align*}
$$

とか

$$
\begin{align*}
\sum_i v^i w_i \leftrightsquigarrow v^i w_i
\end{align*}
$$

とか

$$
\begin{align*}
w^i = \sum_j A^i_{\,j} v^j \leftrightsquigarrow w^i = A^i_{\,j} v^j
\end{align*}
$$

このお気持ちを大切にしつつ一歩進みたい。

## 幾何学の本を開くと

見慣れた座標 $x_1$, $x_2$, $x_3$, ... を何故か $x^1$, $x^2$, $x^3$, ... と書く流儀に出会うことがある。文献 [M] や [H] はざっと見た感じではそうではないのだが、[S1] で p.13 で登場し、p.15 の Tea Time で

> 確かに、この記号の使い方には少し難点があるかもしれない。[...] しかし、もう少し先までベクトル空間の話を進めてみると、この記法は、いろいろな点で非常に有用なものであることがわかってくるだろう。

とある。文献 [I] ではまえがきでこういう書き方があることを触れつつ p.20 で

> 本書でも微分幾何に関連する場合にはこの習慣に従う。

となる。文献 [T] では第14講「ベクトルの変換性」から登場し、ベクトルの “共変性” や “反変性” なるものを明らかにするために使っている旨が書かれている。

文献 [A] では p.45 で現れ始めて、p.46 から本格的に説明がなされる。欄外注釈 22 によると、

> つまり、“共変” という修飾語は、$V$ の基底の変換に対して $V^* \otimes V^*$ の元の成分が基底の変換と同様な仕方でなされるという事実に言及するものであって、～

とある。

## ベクトル空間の基底の変換

ベクトル空間を考えたいが、ここでは簡単のため $\R^2$ を考えたい。少し高尚なものを考えるなら、実 2 次元多様体のある点における接ベクトル空間のような感じだろうか。

2 次元のベクトル空間なので、基底 $\bm{e}_1$ と $\bm{e}_2$ がとれる。簡単のため、

$$
\begin{align*}
\bm{e}_1 = \begin{pmatrix} 1 \\ 0 \end{pmatrix}, \ \bm{e}_2 = \begin{pmatrix} 0 \\ 1 \end{pmatrix}
\end{align*}
$$

としてみる。次に別の基底を考える。別にどういうものでも良いのだが、簡単のため $\theta \in \R$ を適当にとって

$$
\begin{align*}
\bm{\bar{e}}_1 = \begin{pmatrix} \cos \theta \\ \sin \theta \end{pmatrix}, \ \bm{\bar{e}}_2 = \begin{pmatrix} -\sin \theta \\ \cos \theta \end{pmatrix}
\end{align*}
$$

と置いてみたい。これも $\R^2$ の基底である。

$$
\begin{align*}
\begin{cases}
\bm{\bar{e}}_1 = \cos \theta \bm{e}_1 + \sin \theta \bm{e}_2 \\
\bm{\bar{e}}_2 = -\sin \theta \bm{e}_1 + \cos \theta \bm{e}_2
\end{cases}
\end{align*}
$$

という関係がある。

※ **以下、基底 $\{ \bm{e}_i \}$ と $\{ \bm{\bar{e}}_i \}$ を固定する。**

さて、このように基底に関する線型結合を考える時、$x_i \in \R$ に対して $x_1 \bm{e}_1 + x_2 \bm{e}_2$ と書いても良いし、普通の線型代数の教科書はこう書いていると思う。ここは少し調子に乗って、大袈裟にも Einstein の規約を使ってみたいと思うとすると、スカラーを $x^i \in \R$ と取り直して、線型結合 $x^1 \bm{e}_1 + x^2 \bm{e}_2$ と書いても良い気がしてくる。これを Einstein の規約で書くと $x^i \bm{e}_i$ で良いのではないだろうか？

このまま調子に乗って上式を書き換えてみたい。

$$
\begin{align*}
\begin{align*}
A = \begin{pmatrix}
    A_{1}^{\,1} & A_{1}^{\,2}\\
    A_{2}^{\,1} & A_{2}^{\,2}
\end{pmatrix}
\end{align*}
\end{align*}
$$

と置くと、

$$
\begin{align*}
\begin{split}
\begin{cases}
\bm{\bar{e}}_1 = A_{1}^{\,1} \bm{e}_1 + A_{1}^{\,2} \bm{e}_2 \\
\bm{\bar{e}}_2 = A_{2}^{\,1} \bm{e}_1 + A_{2}^{\,2} \bm{e}_2
\end{cases}
\end{split}
\tag{1}
\end{align*}
$$

または

$$
\begin{align*}
\bm{\bar{e}}_i = \sum_{j=1}^2 A_{i}^{\,j} \bm{e}_j
\end{align*}
$$

と書けるだろうか。気取って $\bm{\bar{e}}_i = A_{i}^{\,j} \bm{e}_j$ と書いても良さそうだ。

$$
\begin{align*}
(\bm{\bar{e}}_1 \ \ \bm{\bar{e}}_2) = (\bm{e}_1 \ \ \bm{e}_2) \begin{pmatrix}
    A_{1}^{\,1} & A_{2}^{\,1} \\
    A_{1}^{\,2} & A_{2}^{\,2}
\end{pmatrix} = (\bm{e}_1 \ \ \bm{e}_2) A^T
\tag{1'}
\end{align*}
$$

とも書けるだろう。

## 座標の変換

さて、任意にベクトル $v \in \R^2$ をとる時、これは $v = x^1 \bm{e}_1 + x^2 \bm{e}_2$ と一意に書ける。スカラー $\bar{x}^i \in \R$ をうまく選ぶと

$$
\begin{align*}
\sum_{i=1}^2 x^i \bm{e}_i = \sum_{j=1}^2 \bar{x}^j \bm{\bar{e}}_j
\tag{2}
\end{align*}
$$

と書けるのだが、基底の間に関係式 (1) がある時、係数（或は座標）同士はどういう関係になっているのだろうか？

**準備**

まず、Eq. (1) を書き直す。適当なスカラー $a_{i}^{\,j} \in \R$ をとると以下のように書ける。

$$
\begin{align*}
\begin{split}
\begin{cases}
\bm{e}_1 = a_{1}^{\,1} \bm{\bar{e}}_1 + a_{1}^{\,2} \bm{\bar{e}}_2 \\
\bm{e}_2 = a_{2}^{\,1} \bm{\bar{e}}_1 + a_{2}^{\,2} \bm{\bar{e}}_2
\end{cases}
\end{split}
\tag{1''}
\end{align*}
$$

Einstein の規約で書くと、$\bm{e}_i = a_{i}^{\,j} \bm{\bar{e}}_j$ なのだが、これに Eq. (1) を代入すると、$\bm{e}_i = a_{i}^{\,j} A_{j}^{\,k} \bm{e}_k$ となる。よって、

$$
\begin{align*}
\delta_{i}^{\,k} = \sum_{j=1}^2 a_{i}^{\,j} A_{j}^{\,k}
\end{align*}
$$

という関係を得る。ここで $\delta_{i}^{\,k}$ は Kronecker のデルタである。

これを行列の形で書くと、

$$
\begin{align*}
\begin{pmatrix}
    1 & 0 \\
    0 & 1
\end{pmatrix} = \begin{pmatrix}
    a_{1}^{\,1} & a_{1}^{\,2} \\
    a_{2}^{\,1} & a_{2}^{\,2}
\end{pmatrix} \begin{pmatrix}
    A_{1}^{\,1} & A_{1}^{\,2} \\
    A_{2}^{\,1} & A_{2}^{\,2}
\end{pmatrix}
\end{align*}
$$

となる。つまり、

$$
\begin{align*}
a = \begin{pmatrix}
    a_{1}^{\,1} & a_{1}^{\,2} \\
    a_{2}^{\,1} & a_{2}^{\,2}
\end{pmatrix}
\end{align*}
$$

と置くと、$a = A^{-1}$ ということになる。

準備ができたので Eq. (2) に Eq. (1'') を代入してみると、

$$
\begin{align*}
\sum_{j=1}^2 \bar{x}^j \bm{\bar{e}}_j &= \sum_{i=1}^2 x^i (\sum_{k=1}^2 a_{i}^{\,k} \bm{\bar{e}}_k) \\
&= \sum_{k=1}^2 (\sum_{i=1}^2 a_{i}^{\,k} x^i) \bm{\bar{e}}_k
\end{align*}
$$

を得る。よって、成分を比較して、ついでにインデックスを振り直して

$$
\begin{align*}
\bar{x}^i = \sum_{j=1}^2 a_{j}^{\,i} x^j
\end{align*}
$$

を得る。行列で書くと、

$$
\begin{align*}
(\bar{x}^1 \ \ \bar{x}^2) = (x^1 \ \ x^2) \begin{pmatrix}
    a_{1}^{\,1} & a_{1}^{\,2} \\
    a_{2}^{\,1} & a_{2}^{\,2}
\end{pmatrix} = (x^1 \ \ x^2) A^{-1}
\tag{3}
\end{align*}
$$

となる。**基底の変換とは逆の変換が作用している** ということだ。

Eq. (3) の右から $A$ をかけると、

$$
\begin{align*}
(x^1 \ \ x^2) = (\bar{x}^1 \ \ \bar{x}^2) \begin{pmatrix}
    A_{1}^{\,1} & A_{1}^{\,2} \\
    A_{2}^{\,1} & A_{2}^{\,2}
\end{pmatrix} = (\bar{x}^1 \ \ \bar{x}^2) A
\end{align*}
$$

または、

$$
\begin{align*}
x^i = \sum_{j=1}^2 A_{j}^{\,i} \bar{x}^j
\end{align*}
$$

を得る。この式と Eq. (1) の対応が「反変的」である旨が文献 [S1] p.102 にある。なお、文献 [S1] では $a$ を $\bar{A}$ と書いている。

## ヤコビ行列を使ってみる

ところで、Eq. (3) により、$\bar{x}^i$ を $x^1$ と $x^2$ の函数と見ることができる。よって、偏微分を考えると、$a_{j}^{\,i} = \frac{\partial \bm{\bar{x}}^i}{\partial \bm{x}^j}$ である。これをもって Eq. (3) を書き換えると以下のようになる。

$$
\begin{align*}
(\bar{x}^1 \ \ \bar{x}^2) = (x^1 \ \ x^2) \begin{pmatrix}
    \frac{\partial \bm{\bar{x}}^1}{\partial \bm{x}^1} & \frac{\partial \bm{\bar{x}}^2}{\partial \bm{x}^1} \\
    \frac{\partial \bm{\bar{x}}^1}{\partial \bm{x}^2} & \frac{\partial \bm{\bar{x}}^2}{\partial \bm{x}^2}
\end{pmatrix} = (x^1 \ \ x^2) J^T
\end{align*}
$$

または、

$$
\begin{align*}
\begin{pmatrix} \bar{x}^1 \\ \bar{x}^2 \end{pmatrix} = \begin{pmatrix}
    \frac{\partial \bm{\bar{x}}^1}{\partial \bm{x}^1} & \frac{\partial \bm{\bar{x}}^1}{\partial \bm{x}^2} \\
    \frac{\partial \bm{\bar{x}}^2}{\partial \bm{x}^1} & \frac{\partial \bm{\bar{x}}^2}{\partial \bm{x}^2}
\end{pmatrix} \begin{pmatrix} x^1 \\ x^2 \end{pmatrix} = J \begin{pmatrix} x^1 \\ x^2 \end{pmatrix}
\tag{3'}
\end{align*}
$$

ここで、

$$
\begin{align*}
J = \frac{\partial (\bar{x}^1, \bar{x}^2)}{\partial (x^1, x^2)} = \begin{pmatrix}
    \frac{\partial \bm{\bar{x}}^1}{\partial \bm{x}^1} & \frac{\partial \bm{\bar{x}}^1}{\partial \bm{x}^2} \\
    \frac{\partial \bm{\bar{x}}^2}{\partial \bm{x}^1} & \frac{\partial \bm{\bar{x}}^2}{\partial \bm{x}^2}
\end{pmatrix}
\end{align*}
$$

は **座標変換** $x \mapsto \bar{x}$ のヤコビ行列である。

Eq. (3) の右から $A$ をかけた式

$$
\begin{align*}
(x^1 \ \ x^2) = (\bar{x}^1 \ \ \bar{x}^2) \begin{pmatrix}
    A_{1}^{\,1} & A_{1}^{\,2} \\
    A_{2}^{\,1} & A_{2}^{\,2}
\end{pmatrix} = (\bar{x}^1 \ \ \bar{x}^2) A
\end{align*}
$$

を思い出すと、上記と同じ理由で、$A_{j}^{\,i} = \frac{\partial \bm{x}^i}{\partial \bm{\bar{x}}^j}$ である。定数行列 $A$ をこのように書くのはもやもやするところであるが、文献 [S1] p.141 のページ下部に似たようなことが書いてある。ここでは Eq. (3) に従って $x$ と $\bar{x}$ を動かすと偏導函数は定数になるから・・・という程度で濁す。また後で「微分作用素 $\frac{\partial}{\partial x^i}$」のところで少し振り返る。文献 [S1] も同様のことを書いているようだが、多様体の導入が大分後回しなので、第28講まで進んでから戻ってこないとピンと来ない形になっているようだ。

さて、くどくなるが上式を書き換えて Eq. (3') と同様の式を書いていくと、

$$
\begin{align*}
(x^1 \ \ x^2) = (\bar{x}^1 \ \ \bar{x}^2) \begin{pmatrix}
    \frac{\partial \bm{x}^1}{\partial \bm{\bar{x}}^1} & \frac{\partial \bm{x}^2}{\partial \bm{\bar{x}}^1} \\
    \frac{\partial \bm{x}^1}{\partial \bm{\bar{x}}^2} & \frac{\partial \bm{x}^2}{\partial \bm{\bar{x}}^2}
\end{pmatrix} = (\bar{x}^1 \ \ \bar{x}^2) \bar{J}^T
\end{align*}
$$

または、

$$
\begin{align*}
\begin{pmatrix} x^1 \\ x^2 \end{pmatrix} = \begin{pmatrix}
    \frac{\partial \bm{x}^1}{\partial \bm{\bar{x}}^1} & \frac{\partial \bm{x}^1}{\partial \bm{\bar{x}}^2} \\
    \frac{\partial \bm{x}^2}{\partial \bm{\bar{x}}^1} & \frac{\partial \bm{x}^2}{\partial \bm{\bar{x}}^2}
\end{pmatrix} \begin{pmatrix} \bar{x}^1 \\ \bar{x}^2 \end{pmatrix} = \bar{J} \begin{pmatrix} \bar{x}^1 \\ \bar{x}^2 \end{pmatrix}
\tag{4}
\end{align*}
$$

となる。ここで、

$$
\begin{align*}
\bar{J} = \frac{\partial (x^1, x^2)}{\partial (\bar{x}^1, \bar{x}^2)} = \begin{pmatrix}
    \frac{\partial \bm{x}^1}{\partial \bm{\bar{x}}^1} & \frac{\partial \bm{x}^1}{\partial \bm{\bar{x}}^2} \\
    \frac{\partial \bm{x}^2}{\partial \bm{\bar{x}}^1} & \frac{\partial \bm{x}^2}{\partial \bm{\bar{x}}^2}
\end{pmatrix}
\end{align*}
$$

は **逆方向の座標変換** $\bar{x} \mapsto x$ のヤコビ行列である。

念のために基底の変換 Eq. (1') を書き直すと、

$$
\begin{align*}
(\bm{\bar{e}}_1 \ \ \bm{\bar{e}}_2) = (\bm{e}_1 \ \ \bm{e}_2) \begin{pmatrix}
    \frac{\partial \bm{x}^1}{\partial \bm{\bar{x}}^1} & \frac{\partial \bm{x}^1}{\partial \bm{\bar{x}}^2} \\
    \frac{\partial \bm{x}^2}{\partial \bm{\bar{x}}^1} & \frac{\partial \bm{x}^2}{\partial \bm{\bar{x}}^2}
\end{pmatrix} = (\bm{e}_1 \ \ \bm{e}_2) \bar{J}
\tag{5}
\end{align*}
$$

となることが分かる。

ここまでで、座標変換を通じて見直してみると、基底の変換 $\{ \bm{e} \} \mapsto \{ \bm{\bar{e}} \}$ を制御する行列は $A = \bar{J}^T$ であることが分かった。一方、座標の変換 $x \mapsto \bar{x}$ を制御する行列は $a = J^T$ であることが分かった。$a = A^{-1}$ であったので、$\bar{J} = J^{-1}$ でもあり、**基底と座標の変換を制御する行列は互いに逆行列の関係にある** ことになる。

## 微分作用素 $\frac{\partial}{\partial x^i}$

唐突だが、微分作用素 $\frac{\partial}{\partial x^i}$ を考えてみたい。座標変換 $x \mapsto \bar{x}$ でどのような関係が出るだろうか？これは連鎖律より、

$$
\begin{align*}
\frac{\partial}{\partial \bar{x}^i} = \sum_{j=1}^2 \frac{\partial x^j}{\partial \bar{x}^i} \frac{\partial}{\partial x^j}
\tag{6}
\end{align*}
$$

である。多様体の接空間の基底も同じルールに従っていることに注意しよう。

もしも記号 $T_i = \frac{\partial}{\partial x^i}$ と $\bar{T}_i = \frac{\partial}{\partial \bar{x}^i}$ という記号を導入するとすれば、

$$
\begin{align*}
\bar{T}_i = \sum_{j=1}^2 \frac{\partial x^j}{\partial \bar{x}^i} T_j
\end{align*}
$$

と書ける。ここで、Eq. (5) で $\bm{e}_i$ と $T_i$ を取り替えても式が成立する、言い換えると、**$\frac{\partial}{\partial x^i}$ は基底の変換 $\{ \bm{e} \} \mapsto \{ \bm{\bar{e}} \}$ と同じルールに従った計算で変換される** ことが分かる。このことを「$\frac{\partial}{\partial x^i}$ は基底と共変 (covariant) である」と呼ぶようで、「$\frac{\partial}{\partial x^i}$ は共変ベクトルである」と呼ぶようだ。

この辺で、適当な多様体 $M$ と $p \in M$ をとって、接ベクトル空間の基底 $\left\{ \left( \frac{\partial}{\partial x^i} \right)_p \right\}$ を考えると、これは座標変換 $x \mapsto \bar{x}$ で “動く” ので、基底同士を $\frac{\partial x^j}{\partial \bar{x}^i}$ が繋ぐのもそろそろしっくりしてくる。

## 微分形式 $dx^i$

微分作用素の話を記号を置き換えて読み換えるような感じである。コピペで書き直してみる。ということで、座標変換 $x \mapsto \bar{x}$ でどのような関係が出るだろうか？これは連鎖律より、

$$
\begin{align*}
d \bar{x}^i = \sum_{j=1}^2 \frac{\partial \bar{x}^i}{\partial x^j} d x^j
\end{align*}
$$

である。多様体の余接空間の基底も同じルールに従っていることに注意しよう。

もしも記号 $T_i = d x^i$ と $\bar{T}_i = d \bar{x}^i$ という記号を導入するとすれば、

$$
\begin{align*}
\bar{T}_i = \sum_{j=1}^2 \frac{\partial \bar{x}^i}{\partial x^j} T_j
\end{align*}
$$

と書ける。ここで、Eq. (3') で $\bm{e}_i$ と $T_i$ を取り替えても式が成立する、言い換えると、**$d x^i$ は座標の変換 $x \mapsto \bar{x}$ と同じルールに従った計算で変換される** ことが分かる。このことを「$dx^i$ は基底と反変 (contravariant) である（代わりに座標とは共変）」と呼ぶようで、「$d x^i$ は反変ベクトルである」と呼ぶようだ。

## （反変）ベクトル場 $\sum_{i=1}^2 v^i \frac{\partial}{\partial x^i}$

「（反変）ベクトル場」という用語もよく見る。「あれ？微分作用素 $\frac{\partial}{\partial x^i}$ って共変だったのでは？」となって頭が混乱する。のだが、どうやらこの言い回しは「ベクトル場の成分 $v^i$ が基底の変換 $\{ \bm{e} \} \mapsto \{ \bm{\bar{e}} \}$ に対して反変である」と言っているようである。要するに座標の変換 $x \mapsto \bar{x}$ と同じルールで変換されることを確認すれば良いようだ。ということで、まずは

$$
\begin{align*}
\sum_{i=1}^2 v^i \frac{\partial}{\partial x^i} = \sum_{j=1}^2 \bar{v}^j \frac{\partial}{\partial \bar{x}^j}
\tag{7}
\end{align*}
$$

とおこう。Eq. (6') の逆方向を考えると、

$$
\begin{align*}
\frac{\partial}{\partial x^i} = \sum_{j=1}^2 \frac{\partial \bar{x}^j}{\partial x^i} \frac{\partial}{\partial \bar{x}^j}
\tag{6'}
\end{align*}
$$

であるのでこれを Eq. (7) に代入すると、

$$
\begin{align*}
\sum_{k=1}^2 \left( \sum_{i=1}^2 v^i \frac{\partial \bar{x}^k}{\partial x^i} \right) \frac{\partial}{\partial \bar{x}^k} = \sum_{j=1}^2 \bar{v}^j \frac{\partial}{\partial \bar{x}^j}
\end{align*}
$$

となる。成分を見ると、

$$
\begin{align*}
\bar{v}^j = \sum_{i=1}^2 v^i \frac{\partial \bar{x}^j}{\partial x^i} = \sum_{i=1}^2 \frac{\partial \bar{x}^j}{\partial x^i} v^i
\end{align*}
$$

となっており、Eq. (3') と同じルールになっている。つまり、座標の変換と同じルールであり、基底の変換と反変的である。なので、「反変ベクトル場」と呼ぶらしい。実際、そのような感じのことが文献 [I] p.25 にも書かれている。

この辺はかなり雑に書いてしまった。多様体 $M$ 上の接バンドル $TM := \bigcup_{p \in M} (\{ p \} \times T_p M)$ を考えて、その切断 $\mathscr{X}(M) = \Gamma(TM)$ としてベクトル場を考えるのが良いのかもしれない。すると、この $TM$ には反変的な気持ちを覚えるようになる。

## $(p,q)$-型テンソル場

上記の $TM$ に覚えた反変的な気持ちを踏まえつつ文献 [S2] を見る。

多様体 $M$ 上の接バンドル $TM$ と余接バンドル $T^*M$ から得られるテンソルバンドル

$$
\begin{align*}
\overbrace{TM \otimes \cdots \otimes TM}^{p} \otimes \overbrace{T^*M \otimes \cdots \otimes T^*M}^{q}
\end{align*}
$$

を反変 $p$ 次、共変 $q$ 次のテンソルバンドルと呼んでおり、なんとなく気持ちが分かる気がする。なお、その切断をテンソル場と呼んでいる。

文献 [SA] p.212 でも一般のベクトル空間 $V$ に対して、

$$
\begin{align*}
\overbrace{V \otimes \cdots \otimes V}^{p} \otimes \overbrace{V^* \otimes \cdots \otimes V^*}^{q}
\end{align*}
$$

を $p$ 階反変、$q$ 階共変テンソル空間と呼んでおり、これも同様であろう。

## まとめ

共変（テンソル）ベクトル（場）、共変（テンソル）テンソル（場）みたいなものがさっぱり気持ちが分からないし、表面的に各種文献を見るとごちゃごちゃになってくるので、何となく全部を説明できるであろう愚直な計算を行って、その結果を通じて用語を眺めてみた。安らかな気持ちで始めるために、2 次元の空間で始めたが、2 次元であることをまったく用いておらず、一般の $n \in \N$ で良いことがわかる。

きっと明日には忘れてしまうので、忘れたらこの単純で単調な計算をトレースして思い出したい。

## 参考文献

[M] 松本幸夫, 多様体の基礎, 東京大学出版会, 1988
[H] 服部晶夫, 多様体 増補版, 岩波全書, 1989
[S1] 志賀浩二, ベクトル解析30講, 朝倉書店, 1989
[S2] 志賀浩二, 多様体論, 岩波書店, 1990
[T] 戸田盛和, 相対性理論30講, 朝倉書店, 1997
[I] 磯崎洋, 解析力学と微分方程式, 共立出版, 2020
[A] 新井朝雄, 物理現象の数学的諸原理, 共立出版, 2003
[SA] 佐武一郎, 線型代数学, 裳華房, 1974
[W] Wikipedia, Covariance and contravariance of vectors, https://en.wikipedia.org/wiki/Covariance_and_contravariance_of_vectors
[E] Encyclopedia of Mathematics, Covariant tensor, https://encyclopediaofmath.org/wiki/Covariant_tensor
