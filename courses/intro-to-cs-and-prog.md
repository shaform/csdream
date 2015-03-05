# 計算機概論與程式設計

## 前言

計算機概論與程式設計是[交大資工](http://www.cs.nctu.edu.tw/)大一的[必修課程](http://www.cs.nctu.edu.tw/cswebsite/education/undergraduate/course#course_ruleu)。它和一般系的計算機概論比較不同，主要的重點放在程式設計上。而真正簡介各項議題的則是大一下的「計算機科學概論」。

以帶領學生入門程式設計為目的，其實這門課主要核心便是學習 [C 語言](http://en.wikipedia.org/wiki/C_%28programming_language%29)。因為老師的不同，也可能會學一點 [C++](http://en.wikipedia.org/wiki/C%2B%2B) 或者 [Java](http://en.wikipedia.org/wiki/Java_%28programming_language%29)。使用的教科書主要是[《C: How to Program》](http://www.pearsonhighered.com/educator/academic/product/0,3110,0136123562,00.html)以及[《C Programming: A Modern Approach》](http://knking.com/books/c2/ "C Programming: A Modern Approach")，尤其後者筆者非常推薦。

這堂課每週時數為六節，有三節是上課，還有三節是在晚上的上機課。
以筆者的上課情形為例，上課時，老師都是用投影片講解。而每週的上機課，是先由助教講解當週要派的程式作業，然後就是同學自由寫程式時間。在下課前，必須找助教 demo 並繳交上禮拜派的作業。那時共有 9 個作業。

像這樣有獨立上機課的課程不多，除了一些要用到特殊硬體的實驗課外，在大二以後，作業多半會直接派出，再另外約時間 demo 或者直接繳交。在大一上，這是唯一的一堂程式課，也是未來許多課的基礎。若是沒有學好 C，在往後的程式課會相當不利。

考試的形式是紙筆測驗，也有寫程式的上機考。

## 環境

在撰寫 C 程式之前，需要先準備好開發環境，這裡推薦使用 [Code::Blocks](http://www.codeblocks.org/)，可參考[〈Code::Blocks 10.05 – 能夠媲美Dev C++的C/C++編譯器,跨平台(Ubuntu、Windows、Mac)〉](http://jishus.org/?p=190)的介紹。

## 基礎

筆者建議大家一定要實際拿本書來看，有許多語言的細節唯有透過完整閱讀才能慢慢理解。尤其 C 語言剛好有一本語調清晰、很適合入門者的書：[《C Programming: A Modern Approach》](http://knking.com/books/c2/ "C Programming: A Modern Approach")，如一位學長所推薦：[〈C語言的專用書推薦 C Programming: A Modern Approach〉](http://home.gamer.com.tw/creationDetail.php?sn=974218)，即使是不太習慣看英文書的同學，也可以從這本書開始。

在大學裡，資工系的教科書幾乎都是英語寫成，而教授上課使用的講義和投影也多為英文。能夠早點習慣閱讀英文書，會成為學習上很大的優勢。

網路上也有許多資源可供參考：

*   [C Gossip](http://caterpillar.onlyfun.net/Gossip/CGossip/CGossip.html)
*   [C Programming](http://en.wikibooks.org/wiki/C_Programming)

要學好程式，練習是非常重要的。基礎打好後，接下來最適合的練習就是程式解題了，相關課題可以參考[〈基礎程式設計〉](../topics/problem-solving.md)。做程式解題除了可以增加自己對語言的熟悉度外。更重要的是，培養自己的邏輯能力以及敏銳度。否則有時為了寫出簡單的功能，卻用了複雜的方法，往往讓程式長度變得很長，在寫作業和上機考時都相當不利。

## 小記

若你使用系上的工作站來撰寫程式的話，也可能會使用 [Vim](http://en.wikipedia.org/wiki/Vim_%28text_editor%29), [GCC](http://en.wikipedia.org/wiki/GNU_Compiler_Collection), [GDB](http://en.wikipedia.org/wiki/GNU_Debugger) 等工具。相關介紹可以參考：

*   [大家來學 Vim](http://edt1023.sayya.org/vim/)
*   [GCC Tutorial](http://pages.cs.wisc.edu/~beechung/ref/gcc-intro.html)
*   [使用GDB來進行除錯](http://tetralet.luna.com.tw/?op=ViewArticle&articleId=187&blogId=1)

值得注意的是，雖然此課程以 C 語言作為程式入門，其實 C 語言一般並不被認為是簡單的語言。也因此，[有些人](http://mcsp.wartburg.edu/zelle/python/)會建議初學者從像 [Python](http://en.wikipedia.org/wiki/Python_(programming_language)) 等語言開始學起。

## 相關連結

*   [《C Programming: A Modern Approach》](http://books.google.com/books?id=EDcxHAAACAAJ)
*   [C語言作業](http://using-c.blogspot.com/p/c.html)
*   [《Head First Programming》](http://books.google.com/books?id=E9K8Br6ZkKQC)
*   [《Head First Java》](http://books.google.com/books?id=uIVJiAPlBq0C)
*   [The Python Tutorial](http://docs.python.org/py3k/tutorial/)
