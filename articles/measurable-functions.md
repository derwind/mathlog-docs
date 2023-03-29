# 可測函数の定義と位相空間について

## 概要

よく考えると教科書に出てくる可測函数の定義はちょっと不思議な感じがするので追いかけてみたい。

## 本文

直接の関係はないのだが、連続写像の定義を見てみたい。

位相空間$(X, \mathscr{O}_X)$, $(Y, \mathscr{O}_Y)$があるとする。この時、

**定義**

$f: X \to Y$が連続写像であるとは、任意の$O \in \mathscr{O}_Y$に対して$f^{-1}(O) \in \mathscr{O}_X$が成り立つ時を言う。ここで、$B \subset Y$に対して

$$
f^{-1}(B) := \{x \in X; f(x) \in B \}
$$

である。

この定義は悪名高き$\epsilon-\delta$論法を素直に位相空間の言葉で書いたようなものなので、大きな違和感はない定義と思われる。

次に、可測空間$(\R^d, \mathscr{B}(\R^d))\ (d \geq 1)$から$(\R, \mathscr{B}(\R))$への実 (Borel) 可測函数について考えたい。素朴に考えると、以下の定義だと受け入れやすい。

**定義** ($\mathscr{B}$-可測函数 1)

$f: \R^d \to \R$が可測函数 ($(\mathscr{B}(\R^d), \mathscr{B}(\R))$-可測) であるとは、任意の$B \in \mathscr{B}(\R)$に対して$f^{-1}(B) \in \mathscr{B}(\R^d)$が成り立つ時を言う。

実際、文献 [Ø] の定義はそのようになっている。確率空間の言葉で書かれているが以下のような内容である:

**定義**

確率空間$(\Omega, \mathcal{F}, P)$上の函数$Y: \Omega \to \R^n$は、すべての開集合$U \subset \R^n$に対して$Y^{-1}(U) \in \mathcal{F}$を満たす時、$\mathcal{F}$-可測であると言う。

この書き方を真似ると、

**定義** ($\mathscr{B}$-可測函数 2)

$f: \R^d \to \R$が可測函数 ($(\mathscr{B}(\R^d), \mathscr{B}(\R))$-可測) であるとは、任意の$O \in \mathscr{O}(\R)$に対して$f^{-1}(O) \in \mathscr{B}(\R^d)$が成り立つ時を言う。

ここで、2つの疑問がわく:

1. 何故逆像をとる対象は$B \in \mathscr{B}(\R^d)$ではなく、開集合$U \in \R^n$なのか？
1. 有名な教科書 [I] と [M] での可測函数の定義は一般の可測集合の逆像でも開集合の逆像でもなく、開半直線ではなかったか？

というものである。これについて順に見ていきたい。

## 何故、開集合の逆像で良いのか？

これについては例えば文献 [F] が参考になった。恐らくどの教科書でも載っているのだろうが最初に目についたのがこの本であった。これは p.43 Proposition 2.1 が該当する:

**命題**

$f: X \to Y$ が$(\mathscr{B}(\R^d), \mathscr{B}(\R))$-可測である$\iff$任意の$E \in \mathscr{O}_Y$
に対して$f^{-1}(E) \in \mathscr{B}(\R^d)$

**証明**

$(\Rightarrow)$は明らか。$(\Leftarrow)$については、$\mathcal{M} = \{E \subset Y; f^{-1}(E) \in \mathscr{B}(\R^d)\}$を考える。[集合と写像と逆像](https://mathlog.info/articles/4103)で触れた$f^{-1}$の性質より、補集合と無限和について閉じており、よって$\sigma$-加法族になっている。また、仮定より、$M$は$Y$のすべての開集合を含む。するとBorel集合族の定義を思い出すと、$\mathscr{O}_Y \subset \mathscr{B}(\R) \subset \mathcal{M}$という関係になっていることがわかる。従って、任意の$B \in \mathscr{B}(\R)$に対して$f^{-1}(B) \in \mathscr{B}(\R^d)$である。

という事で、可測函数の定義として「$\mathscr{B}$-可測函数 1」と「$\mathscr{B}$-可測函数 2」のどちらを採用しても良いことがわかったので、見出しの疑問はとりあえず解消した。

ところが、文献 [I] pp.60-61 および文献 [M] p.98 を見ると[Borel可測函数](https://mathlog.info/articles/4104)で触れた以下の形の記述が見られる:

**定義** ($\mathscr{B}$-可測函数 3)

$f:\R^d \to \R$ がBorel可測函数であるとは、任意の$a \in \R$に対して$\{x; f(x) > a\} \in \mathscr{B}(\R)$が成り立つ時を言う。

[Borel可測函数](https://mathlog.info/articles/4104)で見たように、実際には$\{f < a\}$や$\{f=a\}$も含まれてくるので、色々な区間の逆像がBorel集合の時という定義だということが分かる。

しかし、あまりにも区間は開集合やBorel集合と比べると具体的すぎて、これをもって可測函数を定義するのは漏れが出ないのかが不安になる。

## 何故、開半直線で良いのか？

実はこれも文献 [F] p.44 Proposition 2.3 に含まれるのだが、もう少し位相の言葉を使って眺めてみたいと思う。

ここで位相空間の概念を引っ張ってきたい。

## 位相空間論より

専ら文献 [U] を参考にする。

**定義** (開基; open base)

$(X, \mathscr{O})$を位相空間とする。$\mathscr{O}$の部分集合$\mathscr{P}$について、任意の$O \in \mathscr{O}$に対して、ある$\mathscr{P}_o \subset \mathscr{P}$がとれて、$O = \cup \mathscr{P}_o$とできる時、$\mathscr{P}$を位相$\mathscr{O}$の開基と呼ぶ。

例えば、$(X, \mathscr{O}) = (\R, \mathscr{O}(\R))$の場合、$x \in X$における半径$\epsilon > 0$の開球$(x-\epsilon, x+\epsilon)$の全体がなす集合は開基になる。

**定義** (準開基; subbase)

$(X, \mathscr{O})$を位相空間とする。$\mathscr{O}$の部分集合$\mathscr{S}$について、任意の$O \in \mathscr{O}$と$x \in O$に対して、常に有限個の$N_1, \cdots, N_r \in \mathscr{S}$がとれて、$x \in \cap_i N_i \subset O$とできる時、$\mathscr{S}$を位相$\mathscr{O}$の準開基と呼ぶ。

例えば、$(X, \mathscr{O}) = (\R, \mathscr{O}(\R))$の場合、開半直線の全体$\mathscr{S} = \{ (a, +\infty), (-\infty, a); a \in \R \}$は準開基になる。実際、十分小さな$\epsilon > 0$に対して$x \in (\infty, x+\epsilon) \cap (x-\epsilon, +\infty) = (x-\epsilon, x+\epsilon) \subset O$とできる。

さて、可測函数の定義「$\mathscr{B}$-可測函数 3」に戻ると、$\{x \in \R^d; f(x) > a\} = f^{-1}((a, +\infty))$がBorel集合になること、従って、$\{x \in \R^d; f(x) < a\} = f^{-1}((-\infty, a))$もBorel集合になることが、可測函数の定義であることが分かる。これは要するに、**準開基の逆像がBorel集合になる**という定義なのではないか？という推測ができる。

**命題**

定義「$\mathscr{B}$-可測函数 2」$\iff$「$\mathscr{B}$-可測函数 3」

**証明**

$(\Rightarrow)$は明らか。$(\Leftarrow)$については、$O \in \mathscr{O}(\R)$を任意にとる。$O$は可算個の$(x-\delta_x, x+\epsilon_x)$の和で表すことができる。実際$n \in \Z$に対して、$On := O \cap [n, n+1]$とするとき、$O_n$の閉包$\bar{O}_n$を$(x-\delta_x, x+\epsilon_x)$の形の開区間で覆う時、Heine–Borelの定理より、$\bar{O}_n$は有限個の$(x_i^n-\delta_{x_i^n}, x_i^n+\epsilon_{x_i^n})$で覆えることが分かる。各$\delta_{x_i^n}$と$\epsilon_{x_i^n}$について、$\inf{O_n}$と$\sup{O_n}$を超えないように取り直すことで、$\cup_{i=1}^{N_n} (x_i^n-\delta_{x_i^n}, x_i^n+\epsilon_{x_i^n}) = O_n$とできる。よって、

$$
\begin{align*}
O = \cup_{n \in \Z} O_n = \cup_{n \in \Z} \cup_{i=1}^{N_n} (x_i^n-\delta_{x_i^n}, x_i^n+\epsilon_{x_i^n})
\end{align*}
$$

を得た。
従って、$O$の$f$による逆像は[集合と写像と逆像](https://mathlog.info/articles/4103)より、

$$
\begin{align*}
f^{-1}(O) &= \cup_{n \in \Z} \cup_{i=1}^{N_n} f^{-1}((x_i^n-\delta_{x_i^n}, x_i^n+\epsilon_{x_i^n})) \\
&= \cup_{n \in \Z} \cup_{i=1}^{N_n} (\{x; f(x) < x_i^n+\epsilon_{x_i^n}\} \cap \{x; f(x) > x_i^n-\delta_{x_i^n}\}) \in \mathscr{B}(\R^d)
\end{align*}
$$

であることが分かる。

## まとめ

準開基という概念を持ち出すのは大袈裟な気はするが、よく見かける実可測函数の定義は、準開基の$f$による逆像がBorel集合になることで定義されていると見ることもできそうだという事に気づいて面白そうなのでざっと書き出してまとめてみた。

Borel集合族自体はかなり抽象的な存在であるにも関わらず、$\R$の位相の、とりわけ具体的な準開基を用いて函数の可測性を定義してもなんとか辻褄が合うらしいことはなかなか面白い。

## 参考文献

[U] 内田伏一, 集合と位相, 裳華房, 1986
[I] 伊藤清三, ルベーグ積分入門, 裳華房, 1963
[M] 溝畑茂, ルベーグ積分, 岩波書店, 1966
[F] G. Folland, Real Analysis Second Edition, John Wiley & Sons, Inc., 1999
[Ø] B. エクセンダール, 確率微分方程式, 丸善出版, 2012
