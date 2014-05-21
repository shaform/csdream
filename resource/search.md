# 大學裡的實用搜尋技巧

身為資工人，搜尋技巧十分重要。許多的學問在網路上都有豐富的資源，懂得搜尋，能讓你更方便的學習。而有時遇到一些問題時，身邊的人都沒有經驗，你也沒有時間仔細鑽研裡頭的學問，此時透過搜尋引擎，往往能找到可用的解法。尤其，有時你會發現，在朋友間常會彼此詢問一些電腦上的問題，這些問題其實在網路上都可搜尋到的。若能善用搜尋，將會為彼此節省不少時間。

在[〈如何取得教科書〉](textbook.md)一文中，我們已討論過實體書籍的取得，本文將注重在網路資源的探索。首先，先介紹幾個網站：

*   [Google (en)](https://www.google.com/?hl=en)

萬用搜尋引擎，若想搜尋英文資料，使用英文版 Google 通常能得到較好的結果。尤其程式語言的資訊在網路上多以英文居多，Google 為資工人必備網站之一。

*   [Google 中文](http://www.google.com.tw)

中文版 Google，搜尋中文資料時可以使用。

*   [Wikipedia](http://en.wikipedia.org)

線上百科全書，由網友編撰。你可以發現每個條目都寫的非常詳細，有時甚至比課本寫的更為完整。筆者上課時，老師甚至曾用 Wikipedia 條目講解 [red-black tree](http://en.wikipedia.org/wiki/Red%E2%80%93black_tree)。

*   [The Free Dictionary](http://www.thefreedictionary.com/)

整合各大字典，查定義和解釋時可以使用。

*   [Amazon.com](http://www.amazon.com/)

線上書店，使用她倒不見得是為了購書。在 amazon.com 上，每本書幾乎都有豐富的讀者評價，加上相關書籍的推薦，使得 Amazon 變成一個協助我們判斷該使用哪本書的參考來源。

接著，筆者將依照幾個使用情境解說搜尋技巧。在下文中，若無特別說明，則使用的搜尋引擎皆為 Google (en)。

## 搜尋教學資源

要搜尋教學，通常只要配合幾個關鍵字就可以達到目的。例如，你想學習 [Python](http://en.wikipedia.org/wiki/Python_%28programming_language%29)，則可嘗試以下關鍵字：

*   python tutorials
*   python books recommendation
*   python books
*   python guide
*   python ebooks
*   learn python
*   python documentation

## 搜尋習題解答

當你自學時，若寫完了習題卻無法確定答案，總是會讓學習效果打折。若你想搜尋課本的解答，可以透過課本名稱加上 <q>solutions</q> 關鍵字，如搜尋「Introduction to Algorithms solutions」，則可輕易發現官方釋出的習題解答：[Solutions to exercises and problems](http://mitpress.mit.edu/algorithms/#solutions)。

有時官方並不會釋出習題解答，這時就得使用更為進階的技巧。首先注意到，這些教科書通常在全球都有使用，所以派出的習題也大同小異。而某些教授會把作業解答放在網站上，我們只要想辦法找到這些解答就行了。這時，我們通常得針對特定題目進行搜尋：

### 整句搜尋

想找特定題目，最重要的就是過濾掉不必要的資訊，以演算法概論中的題目為例：

> Let X[1..n] and Y[1..n] be two arrays, each containing n numbers already in sorted order. Give an O(lg n)-time algorithm to find the median of all 2n elements in arrays X and Y.

我們可以以其中較有特色的句子，配合 Google 的完全符合，用「&quot;find the median of all 2n elements in arrays X and Y&quot;」(注意加上雙引號)來搜尋，便可輕易發現一模一樣的題目以及參考解答。有時在題目中會有一些特殊符號，此時用完全符合搜尋可能不會有好結果，則可刪除特殊符號後，用一般搜尋方式(注意此例其實可以直接搜尋，但有些數學符號是無法表示的)：

> Let X and Y be two arrays each containing n numbers already

### 英文？中文？

資工這領域，許多資料多以英文撰成，習題解答也不例外，若是透過中文搜尋沒有好結果時，往往可以用英文找出答案。例如在計算機網路概論中，有一個跟 Ethernet 和 ARP 有關的實驗，其開頭語如下：

> 本次實驗主要是讓同學瞭解 Ethernet Protocol 和 ARP protocol,透過 Wireshark 的使用,來觀察兩個 protocol 的詳細資訊。

若是使用之前的整句技巧來搜尋，恐怕很難找到結果。但若將中文語句刪除，並增添 <q>lab</q> 關鍵字，以「Ethernet Protocol  ARP protocol Wireshark  lab」來作搜尋，輕易的便找到英文版的 lab 以及其 solution。

誠然，視題材的不同，也不盡然都得透過英文搜尋，有時甚至可能在簡體中文網站較易發現。讀者若無法輕易判斷時，可多試幾次不同找法。

但小心：有時你會發現找到的解答（即使是官方釋出）是錯誤的！無論如何，都得用自己的思考小心判斷。

## 搜尋考古題

考古題的取得通常是同學相傳或者老師公佈，但在少數的情況裡，其實透過搜尋還是能取得考古題的，舉例來說：

*   計算機系統管理 期中考 site:nctu.edu.tw
*   微積分 考古題 交大

使用 site 是要限定在交大網域裡搜尋。在這兩個例子裡，妳都可以找到官方釋出的考古題。

## 搜尋問題解法

有時當你在編譯或執行程式時會發生錯誤，此時你多半會得到錯誤訊息，透過這錯誤訊息，我們往往可以在網路上找到他的成因以及解法。但在作這種搜尋時，最重要的就是關鍵字的選法了。透過輸入重要的關鍵字，能過濾出真正想要的資訊。例如以下情形，讀者或可嘗試不同關鍵字所造成的結果：

*   source.cpp:10: warning: ignoring return value of 'int scanf(const char*, ...)',
*   declared with attribute warn_unused_result
*   ignoring return value of scanf

像是 source.cpp 或者行號等等不必要訊息通常將之去除會得到較好的結果。而有時也可針對某些特殊語句下雙引號，使用完全符合的功能。

網路上也有像 [Stack Overflow](http://stackoverflow.com/) 等專門發問與回答的網站。除了可以直接到網站搜尋外，其實筆者比較習慣用「foreign key sqlite stack overflow」、「最短路徑 yahoo 知識」之類的關鍵字，直接將 stack overflow 等等插入 Google 搜尋之中。

## 搜尋程式碼

有時對程式的實做細節較不熟悉，想要參考前人作法，要怎麼辦呢？透過網路搜尋，一樣可以找到公開的程式碼。以 [SHA-1](http://en.wikipedia.org/wiki/SHA-1) 為例，你可以嘗試以下關鍵字：

*   sha-1 c code
*   sha 1 sourcecode
*   sha1 implementation java
*   sha 1 example

另一種方法則是直接在程式碼網站上搜尋，知名的如 [Google Code](http://code.google.com/)、[github](https://github.com/) 等等。

值得注意的是，一旦看了別人的程式碼，有時便會很難寫出自己的東西，一般是建議先自己寫過再參考。或者，就得對自己有高一點的要求。

## 結語

在有網路的時代，搜尋技巧絕對至關重要。透過搜尋引擎，能讓自己接觸到來自全球的最新資訊。你也可以搜尋「google 搜尋教學」觀看更多技巧，筆者也在文末條列幾個教學，供大家參考。

## 延伸閱讀

*   [Get More Out of Google](http://www.hackcollege.com/blog/2011/11/23/infographic-get-more-out-of-google.html "Get More Out of Google")
*   [Google Guide](http://www.googleguide.com/)
