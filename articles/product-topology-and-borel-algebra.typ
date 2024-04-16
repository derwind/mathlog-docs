#import "../style/mathlog_style.typ": *

= 積位相と Borel 集合族

Ref. [Ø] を参考に、以下のような問題を考える。

$T$ を適当な集合とし、$T$ から $RR^n$ への函数の集合

$
X := (RR^n)^T = {f: T -> RR^n}
$

を考える。$RR^n$ の Borel 集合 $F_(t_i) in cal(B)(RR^n), 1 <= i <= k$ を用いて ${ f in X; f(t_i) in F_(t_i), 1 <= i <= k }$ と書けるような集合から生成される $sigma$-加法族 $cal(B)$ が、$T$ の適当な条件のもとで、$X$ のある位相についての Borel 集合族となることを以下で見たい。具体的には以下を示したい。（この内容は Ref. [Ø] の主張より弱いが、とりあえず今回はこの弱い主張を確認したい）

#thm[
  $t in T$ に対して射影 $pi_t: (RR^n)^T -> RR^n$ を $f |-> f(t)$ で定める時、この射影を用いて $X$ に積位相を入れる。$T$ が可算濃度の時、$sigma$-加法族 $cal(B)$ は積位相に関する Borel 集合族になる。
]

== 函数の集合 $X$ の積位相

$t in T$ に対して射影 $pi_t: (RR^n)^T -> RR^n$ を $f |-> f(t)$ で定める。この射影を用いて $X$ に積位相を入れる。よって、$t in T$ に対して、準開基は $U_t in cal(O)(RR^n)$ に対する “シリンダー” となる。$f(t)$ が属する $RR^n$ に目印をつけて $RR^n_t$ と書くことにすると、イメージとしては以下のような感じのものになる。

$
pi_t^(-1) (U_t) = (product_(t^prime < t) RR^n_(t^prime)) times U_t times (product_(t^prime > t) RR^n_(t^prime))
$

積位相の開基はこれらの有限交叉となる。例えば 2 個の準開基の交叉は以下のようになる。

$
sect.big_(i=1)^2 pi_(t_i)^(-1) (U_(t_i)) = (product_(t^prime < t_1) RR^n_(t^prime)) times U_(t_1) times (product_(t_1 < t^prime < t_2) RR^n_(t^prime)) times U_(t_2) times (product_(t^prime > t_2) RR^n_(t^prime))
$

もう少し一般的な書き方をすると、以下のようなものである:

$
N(U_(t_1), ..., U_(t_k)) := sect.big_(i=1)^k { pi_(t_i)^(-1) (U_(t_i)); U_(t_i) in cal(O)(RR^n) } quad quad quad (1)
$

よって、$X = (RR^n)^T$ の積位相における開集合は一般に $O = union.big N(U_(t_1), ..., U_(t_k))$ の形で表現される。この位相は各 $pi_t, t in T$ を連続にする最弱の位相である。

また、この積位相は $X$ の函数について「各点収束の位相」とも呼ばれる。つまり、$f_n -> f$ in $X$ $<==>$ $f_n (t) -> f (t), forall t in T$ である。(Ref. [F] Prop 4.12)

== $sigma$-加法族

$X$ に次のような $sigma$-加法族を導入する。$RR^n$ の Borel 集合 $F_(t_i) in cal(B)(RR^n), 1 <= i <= k$ を用いて

$
{ f in X; f(t_i) in F_(t_i), 1 <= i <= k } quad quad quad (2)
$

と表される集合から生成される $X$ 上の $sigma$-加法族を $cal(B)$ とする。$T$ が第 2 可算公理を満たす時、この $cal(B)$ は $X$ の積位相についての Borel 集合族になることを見たい。


== 定理の証明

Eq. (2) を書き換えよう。これは $f in X$ で $t_1$, $t_2$, $t_3$ で$U_1$, $U_2$, $U_3$ を通るようなものである。これを踏まえると、

$
sect.big_(i=1)^k { pi_(t_i)^(-1) (F_(t_i)); F_(t_i) in cal(B)(RR^n) } quad quad quad (3)
$

と書き直すことができることが分かる。特に $F_(t_i) = U_(t_i) in cal(O)(RR^n) subset cal(B)(RR^n)$ をとると、Eq. (1) より $N(U_(t_1), ..., U_(t_k))$ に等しい。よって、$cal(B)$ は $X$ の積位相における開基を含むことが分かった。

ここで、$macron(cal(B))$ を開基 $N(U_1, ..., U_k)$ の集合から生成される最小の $sigma$-加法族とする。この開基が定める位相が*第 2 可算公理を満たす*時（後述）、開基の可算個の合併 $union.big N(U_1, ..., U_k)$ で表現される開集合がすべて $macron(cal(B))$ に含まれる。つまり *$macron(cal(B))$ は $X$ の位相についての Borel 集合族*となる。
\
ところで、$cal(O)(RR^n) subset cal(B)(RR^n)$ なので、$macron(cal(B)) subset cal(B)$ である。
\
また、Ref. [F] Prop 2.1 より $cal(O)(RR^n)$ の $pi_t, t in T$ による逆像は $pi_t$ の連続性により開集合であり、故に$macron(cal(B))$ に含まれるので、$pi_t$ は $(macron(cal(B)), cal(B)(RR^n))$-可測である。よって、Eq. (3) またはそれと等価な Eq. (2) のような集合はすべて $macron(cal(B))$ に含まれる。よって、Eq. (2) の集合から生成される $sigma$-加法族 $cal(B)$ は $cal(B) subset macron(cal(B))$ ということになる。以上より、$cal(B) = macron(cal(B))$ である。

最後に、*$X$ の積位相が第 2 加算公理を満たすことが示されれば*、$cal(B)$ は Borel 集合であることが分かる。これについては、$RR^n$ は第 2 加算公理を満たす（c.f. Ref. [U] 例 17.5）ことから、仮定より $T$ は可算濃度なので $X = (RR^n)^T$ もまた第 2 加算公理を満たすことから従う (c.f. Ref. [F] Section 4.2 Exercise 20, Ref. [K] Chapter 3 Theorem 6 & Problems M)。

== 例

例えば、$T = [0, oo) sect QQ$ の時、定理が成立する。

== まとめ

本の主張よりは弱い形での証明だが、一般的な (？) 開集合に対する Borel 集合族を考えるということをしてこなかったので、良い題材になった。第 2 可算公理も “おまじない” としてしか使っていなかったので、今回比較的ちゃんと向き合うことができて良かった。

== 参考文献

[Ø] B. エクセンダール, 確率微分方程式, 丸善出版, 2012

[F] G. Folland, Real Analysis (Second Edition), John Wiley & Sons, Inc., 1999

[U] 内田伏一, 集合と位相, 裳華房, 1985

[K] John L. Kelley, General Topology, Springer, 1955
