---
id: problem-solving
title: 程式解題
---

## 前言

基礎程式設計是[交大資工](http://www.cs.nctu.edu.tw/)大二的[必修課程](http://www.cs.nctu.edu.tw/cswebsite/education/undergraduate/course#course_rule)，說是課程，其實主要是一個程式設計的檢定。題目的形式像是一般高中資訊學科能力競賽或者是 [ACM ICPC](http://chinese.engadget.com/2009/03/16/interview-acm-contest-team-in-ntu/) 等等，不過題目比較沒有那麼難。

如公告所示：

1.    不修課也可以參加「程式能力鑑定」
2.   可考過後再選修「基礎程式設計」(上課第一天確認己通過後，即可不再出席)
3.   「程式能力鑑定」可不限次數參加
4.   選修「基礎程式設計」，若整個學期都沒考過，則該科成績就不及格

由此可見，最好的策略是在實際選修之前，就開始去參加[「程式能力鑑定」](http://gpe.acm-icpc.tw/)，若通過了，則選「基礎程設」課程時，即可直接視為通過。

檢定考的題目皆從檢定網站上的[題庫](http://gpe.acm-icpc.tw/)而來，學生們隨時都可以到網站上練習，也可以馬上得知自己寫的是否正確。即使不是交大的學生也可以到系統上註冊帳號寫題目。

從資工系大二開始，有很多課都要寫程式。基礎程設的題目提供了練習寫程式的絕佳機會。有心的話，從高中開始練習也不錯。

## 基礎

Online Judge 的題目除了需要對使用的語言有一定的嫻熟度外（特別是在處理輸出入時），有時也會用到[演算法](http://en.wikipedia.org/wiki/Algorithm)（基礎程設的題目不太會出現一些很難的演算法）。

目前支援的語言有 [C](http://en.wikipedia.org/wiki/C_%28programming_language%29), [C++](http://en.wikipedia.org/wiki/C%2B%2B), [Java](http://en.wikipedia.org/wiki/Java_%28programming_language%29) 等等，在交大資工裡，最常碰到的語言是 C 和 C++，但也些課也會要求使用 Java。

學好一個程式語言的方法無他，便是需要大量的練習。為了掌握語言的細節，最好是能至少完整看完一本介紹的書。如果要自修 C 的話，推薦  [《C Programming: A Modern Approach》](http://www.anobii.com/books/C_Programming/9780393979503/01d43c0f2926ab73e7/)，這本書的筆調清晰，十分易讀。

C++，一般都推 [《C++ Primer》](http://www.anobii.com/books/C_Primer/9780201721485/00d73a0b9b1d04cd44/)，也可以跟 [《C++ Primer Plus》](http://www.anobii.com/books/C_Primer_Plus/9780672326974/01b0c574ef4c3cee80/) 比較看看。一天看個幾十頁，不到一個學期就能看完。接下來再透過寫題目來磨練自己的技巧，就能不斷進步。

演算法的部份，如果要看正式的教科書的話，學校用的是 [《Introduction to Algorithms》](http://www.anobii.com/books/Introduction_to_Algorithms/9780262033848/01d9ac2cad55a6c282/)。另外,推薦一本比較小本，[《Algorithm Design》](http://www.anobii.com/books/Algorithm_Design/9780321372918/014579928ca81253f3/) 感覺挺適合入門。

當然，實際上直接動手解題也可以。很多深入的演算法其實並不會在題目中見到，有時反而是要一點小聰明。

網路上也能找到一些程式設計的入門教學，在此枚舉幾項：

*   [C Gossip](http://openhome.cc/Gossip/CGossip/)
*   [演算法筆記](http://www.csie.ntnu.edu.tw/~u91029/index.html)


## 程式鑑定網站

程式檢定的網址在 http://gpe.acm-icpc.tw/ ，若要建立新帳號，只要按下「Apply Here」，然後簡單填一下資料，再收一下確認信即可。

基礎程式檢定的形式，是透過 Online Judge 解題。關於 Online Judge 的來歷，可參考：[Online Judge System](http://www.csie.ntnu.edu.tw/~u91029/oj.html)。

大致上，每道題目都會有許多輸入，你的程式要將輸入轉換成正確的輸出。輸出入都是採 Standard Input / Output，可以參考 [How to write C/C++ solutions](http://acm.timus.ru/help.aspx?topic=cpp)。

把程式傳上去後，會自動 Judge 並把結果回報給你。每解開一道題目，總會有滿滿的成就感。兩三天解個一題也好，對程式的掌握度必能提升。

關於各種訊息的意思可參考[〈程式解題系統使用手冊〉](http://judge.nccucs.org/UserGuide.jsp)的「錯誤的訊息意義」。

注意到，輸出一定要完全相符才會 Accept，就算多印/少印一行空白仍視為 Wrong Answer。

Run-error 的原因有很多種。像是除以0、存取不正確的記憶體位址、遞迴太多層(stack overflow)等等。

它編譯器的檢查比較嚴格，所以有時會出現一些 warning，例如，如果你寫了：

```cpp
scanf("%d %d", &digit1, &digit2);
```

就會出現：

> source.cpp:10: warning:
> ignoring return value of 'int scanf(const char*, ...)',
> declared with attribute warn_unused_result

那是因為沒有檢查 scanf 的回傳值，你無法確定是否有成功讀取。這樣的 warning 就算忽略也沒關係，真正造成 compile error 的是 "error"

分數版的看法可參考[「某次比賽的分數版」](http://gpe2.acm-icpc.tw/domjudge2/pct/scoreboard.php?cid=110)。

![分數版](assets/bpc-score.png)

Score 欄位有兩個數字，如 7 和 442：前者是你解的題數，後者是花的總時間，排名是先比題數，再看誰花的時間較少。

每一題都會顯示幾個數字，如 6 (164 + 100)。6 表示你傳了六次(會一直記到解正確為止)，164是你 Accept 時比賽經過了多久(164分鐘)，每傳一次錯誤會罰20分鐘，所以 + 100 就是罰了五次共100分鐘。

時間和罰分只有在 Accept 後才會記入總時間。在程式檢定中，只要解出兩題就算通過。

## 小提醒

1.   無論題目敘述為何，只要可以將輸入轉換為正確的輸出即為正確，以 [2008-16: Binary quicksort (Radix-exchange sort)](http://gpe2.acm-icpc.tw/domjudge2/pct/showproblemtab.php?probid=2008-16&amp;cid=2)，[2008-31: m-way merge](http://gpe2.acm-icpc.tw/domjudge2/pct/showproblemtab.php?probid=2008-31&amp;cid=2)，為例，前者要你用 Radix sort 排列數字，後者要你 merge 多維陣列，但實際上兩題都可以直接把所有數字讀入一個陣列中，再直接排列數字後輸出即可：

```cpp
sort(array, array+size);
```

2.   善用函式庫

上面兩題可以用 [C++ STL](http://www.sgi.com/tech/stl/) 中的 [sort](http://www.sgi.com/tech/stl/sort.html) 來排列數字，善用函式庫確實可以節省許多時間，以 [2008-29:Permutation](http://gpe2.acm-icpc.tw/domjudge2/pct/showproblemtab.php?probid=2008-29&amp;cid=2) 為例，若使用 STL 的 [next_permutation](http://www.sgi.com/tech/stl/next_permutation.html) 的話程式變得相當簡單...

```cpp
#include <cstdio>
#include <vector>
#include <algorithm>
using namespace std;
int main()
{
        int d;
        vector<unsigned long long> sz;
        sz.push_back(1);
        scanf("%d", &d);
        for (int c=1; c<=d; ++c) {
                int n;
                scanf("%d", &n);
                while (n > sz.size()) sz.push_back(sz.back()*(sz.size()+1));
                printf("%llu\n", sz[n-1]);
                int vec[7];
                for (int i=0; i<n; ++i)
                        vec[i] = i+1;
                do {
                        printf("%d", vec[0]);
                        for (int i=1; i<n; ++i)
                                printf(" %d", vec[i]);
                        printf("\n");
                } while (next_permutation(vec, vec+n));

        }
}
```

3.   大體上基礎程設題目的測資都很弱所以不一定要用最快的演算法，有時就算用 Brute-force (暴力解、跑完所有可能，硬作)依然會過。當然也有暴力解會超過時間的情形。

4.   有些題目是經典演算法題，以 [2008-13:Maximum contiguous subsequence](http://gpe2.acm-icpc.tw/domjudge2/pct/showproblemtab.php?probid=2008-13&amp;cid=2) 為例，這是一個很典型的問題，有很多解法：http://goo.gl/tmavy 。[2008-32](http://gpe2.acm-icpc.tw/domjudge2/pct/showproblemtab.php?probid=2008-32&amp;cid=2) 是基本的 [Shortest-path](http://en.wikipedia.org/wiki/Shortest-path) 問題。

[2008-17:Farey series of order n](http://gpe2.acm-icpc.tw/domjudge2/pct/showproblemtab.php?probid=2008-17&amp;cid=2) 則是只要照著題目的公式做就行，要注意一些輸出的小細節。

## 其它

*   [基礎程設檢定網站](http://gpe.acm-icpc.tw)
*   [國際大專院校程式設計競賽推廣與培訓](http://ptc.moe.edu.tw)
*   [[ACM] 自己整理一些有用的網站](http://chchwy.blogspot.com/2008/09/acm_30.html)
*   C/C++常用函式參考：[C++ Reference](http://www.cppreference.com)
*   一些題目如果實在解不出來可以按 Wiki 頁面，有解法參考。

## 遊戲式的線上競賽

簡單來說就是兩個人連線後，系統會出題，通常不會太複雜，比看誰先解出來。兩個網站都支援許多語言，可以選自己擅長的來比賽。

* [CodeFights](https://codefights.com)
* [CodinGame](https://www.codingame.com/games)

## 面試類線上題庫

*   [LeetCode](https://leetcode.com/)
*   [HackerRank](hackerrank.com/)
