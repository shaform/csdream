---
title: 練習程式解題
aliases:
  - /docs/problem-solving.html
---

# 練習程式解題

## 前言

程式解題，指的是利用寫程式來解決一些特定的程式題目。這些題目通常會指定特定的輸入，而要求程式輸出特定的輸出。例如像是輸入一張地圖的表示，以及起點和終點的表示，則程式必須找到從起點到終點的最短路徑，並將結果輸出。

這類問題也是[資訊能力競賽](https://zh.wikipedia.org/zh-tw/%E9%AB%98%E7%B4%9A%E4%B8%AD%E5%AD%B8%E6%95%B8%E7%90%86%E5%8F%8A%E8%B3%87%E8%A8%8A%E5%AD%B8%E7%A7%91%E8%83%BD%E5%8A%9B%E7%AB%B6%E8%B3%BD)、[資訊奧林匹亞](https://en.wikipedia.org/wiki/International_Olympiad_in_Informatics)、[大學程式設計先修檢測](https://apcs.csie.ntnu.edu.tw)、[大學程式能力檢定](https://cpe.cse.nsysu.edu.tw/)、[ACM 大學生程式競賽](https://en.wikipedia.org/wiki/ACM_International_Collegiate_Programming_Contest)等等的標準考題。就算是進入職場，許多面試也會要求應試者在白板上現場解類似的題目，可說是資訊界最基礎的練習問題也不為過。

## 基礎

程式解題的題目除了需要對使用的語言有一定的嫻熟度外（特別是在處理輸出入時），有時也會用到[演算法](https://en.wikipedia.org/wiki/Algorithm)。

學好一個程式語言的方法無他，便是需要大量的練習。為了掌握語言的細節，最好是能至少完整看完一本介紹的書。如果要自修 C 的話，推薦  [《C Programming: A Modern Approach》](http://knking.com/books/c2/index.html)，這本書的筆調清晰，十分易讀。

C++，一般都推 [《C++ How to Program》](https://www.pearson.com/us/higher-education/product/Deitel-C-How-to-Program-10th-Edition/9780134448237.html)。一天看個幾十頁，不到一個學期就能看完。接下來再透過寫題目來磨練自己的技巧，就能不斷進步。

演算法的部份，如果要看正式的教科書的話，學校用的是 [《Introduction to Algorithms》](https://mitpress.mit.edu/books/introduction-algorithms-third-edition)。另外,推薦一本比較小本，[《Algorithm Design》](https://www.goodreads.com/book/show/145055.Algorithm_Design) 感覺挺適合入門。

當然，實際上直接動手解題也可以。很多深入的演算法其實並不會在題目中見到，有時反而是要一點小聰明。

網路上也能找到一些程式設計的入門教學，在此枚舉幾項：

*   [C Gossip](https://openhome.cc/Gossip/CGossip/)
*   [演算法筆記](http://www.csie.ntnu.edu.tw/~u91029/index.html)

## Timus Online Judge

以下就介紹其中一個 Online Judge 題庫網的使用方法。

[Timus Online Judge](http://acm.timus.ru) 是俄國 Ural 大學設立的程式線上測驗網站，有許多程式題目可供大家練習。他支援 C++ / Java / Python / Ruby / Go / Haskell / Pascall / Scala 等等多種語言，而且網站速度滿快的，還有貼心的題目難易排行。進入 [http://acm.timus.ru/](http://acm.timus.ru/) 後可看到首頁如下：
![Timus OJ](/csdream/assets/timus1.png)

### 重要連結

在上方可以看到不少連結，這裡針對一些比較重要的部份介紹。
![timus menu](/csdream/assets/timus-menu.png)

*   [Frequently asked questions](http://acm.timus.ru/help.aspx?topic=faq), [Guide
](http://acm.timus.ru/help.aspx?topic=judge) - 
這兩個地方可以找到網站的使用指引和常見問題，也有如何用特定程式語言解題目的示範，建議可以先從這裡看起。
*   [Problem set](http://acm.timus.ru/problemset.aspx) - 
網站的題庫區，想解題時從這裡開始。
*   [Submit solution](http://acm.timus.ru/submit.aspx) - 
如果妳已經知道想解問題的編號的話，使用這個頁面可以快速送出你的程式碼給網站評分。
*   [Judge status](http://acm.timus.ru/status.aspx) - 
可以看到大家和自己最近上傳的程式碼被評分的狀態。
*   [Register](http://acm.timus.ru/register.aspx) - 
如果妳還沒註冊的話要先註冊帳號才能開始解題。

### 註冊帳號

我們就按下 [Register](http://acm.timus.ru/register.aspx) 開始註冊自己的帳號吧！

![Timus register](/csdream/assets/timus2.png)

上面的重要欄位由上而下分別是**名字**、**密碼**、**再輸入一次密碼做確認**、**電子郵件**、**國家**。名字的部份必須要填英文，會顯示在自己頁面還有排名等等。密碼平常不會用到，只有更改資料時有用，建議可以設成跟平時的密碼不同。電子郵件一定要填有效的，才收的到之後的確認信。最下面的欄位請輸入妳看到的數字，這樣他才知道你不是亂註冊的機器人。 填好後按下 Register 就可以等著收郵件囉，如果一直沒收到的話還可以用 [password recovery form](http://acm.timus.ru/authedit.aspx) 要求重寄。

![Timus registered](/csdream/assets/timus3.png)

收到的信內容大概像下面一樣，它會把你的密碼還有 **JUDGE_ID** 寄給妳，這個 JUDGE_ID 很重要，將來上傳程式碼就是要依據這個 ID，所以也請不要隨便把 JUDGE_ID 告訴別人喔。
![Timus email](/csdream/assets/timus4.png)

### 開始解題

點擊 [Problem set](http://acm.timus.ru/problemset.aspx) 就可以看到網站上的題目集了，這裡我們先選擇 [All problems](http://acm.timus.ru/problemset.aspx?space=1&amp;page=all) 觀看全部的題目。
![Timus problem set](/csdream/assets/timus5.png)

接下來你應該會看到如下頁面，我們選擇 Sort by: difficulty，讓最簡單的題目被列出來，畢竟新手起步還是不要太好高騖遠才好。看來 A+B Problem 最簡單了，就從這題開始吧！
![Timus all problems](/csdream/assets/timus6.png)

這題的題目是什麼呢？程式的輸入只有一行，是兩個數字，計算兩者相加再輸出一行答案即可，簡單吧！不過在解題之前讓我們先看看題目頁面吧，首先最上面會有：

*   Time limit - 程式執行時間的限制
*   Memory limit - 程式使用記憶體的限制

再來則是題目的敘述，接下來還會有兩個段落特別提到：

*   Input - 程式輸入的資料及資料呈現的格式
*   Output - 程式的輸出

最後則會有範例的輸入及你的程式如果遇到此輸入時應該送出的輸出。

![Timus 1000](/csdream/assets/timus7.png)

等你解完程式打算上傳程式碼時，就點擊下方的 Submit solution。此外，如果卡住不知道怎麼解，還可以按下 Discussion 和大家一起討論解法呢。

上傳界面如下，在 JUDGE_ID 打入之前收到的自己 ID，然後在 Language 選擇自己使用的程式語言環境，這裡的選擇滿多的，像是 Python 就有不同版本，C/C++ 的話也可以選擇 Visual C/C++、GCC/G++、和支援新版 C11/C++11 的 GCC/G++ 等等。Problem 就是目前題目的題號。然後把答案程式碼貼在下面框框，或者用 Choose File 直接上傳原始碼。按下 Submit 就上傳了！

![Timus submit](/csdream/assets/timus8.png)

上傳後會看到如下頁面，可以看到程式還在執行中，其他人有的已經寫出正確解答了(Accepted)，也有人有錯誤(Wrong answer)，錯誤時它還會告訴你是錯在第幾筆測資呢(Test #)，只是它當然不會告訴你測資的內容啦。
![timus judgement result](/csdream/assets/timus9.png)

按下重新整理，或者等一陣子讓它自己更新，就可以看到評分結果啦，正確了，是不是很開心呢：
![timus accepted](/csdream/assets/timus10.png)

點擊自己的名字可以進到個人頁面，這裡會顯示自己的積分和排名，還有解過的題目，看到一個個題目慢慢被解出來，真的有不少成就感。除此之外，也可以看看其他人的頁面喔！
![timus user page](/csdream/assets/timus11.png)

### 評分結果說明

*   Accepted. - 正確！
*   Compilation error. - 程式編譯錯誤，可能是打錯字等等。
*   Wrong answer. - 答案錯誤。
*   Time limit exceeded. - 程式跑太久了。
*   Memory limit exceeded. - 程式用太多記憶體了。
*   Output limit exceeded. - 程式輸出太多東西了。
*   Runtime error. - 程式跑的時候當掉了。
*   Restricted function. - 程式使用到了禁止的功能，像是企圖讀取伺服器上的檔案等等。

## 面試類線上題庫

競賽的程式解題通常較困難，一題可能就花去不少時間，因此在面試時通常不會考那麼困難。網路上也有人蒐集平常面試可能會考的問題，讀者可以嘗試練習看看。

*   [LeetCode](https://leetcode.com/)
*   [HackerRank](https://hackerrank.com/)

## 遊戲式的線上競賽

除了正規的程式解題外，也有人發展用寫程式來玩遊戲的教學網站。兩個網站都支援許多語言，可以選自己擅長的來比賽。

* [CodeFights](https://codefights.com)
* [CodinGame](https://www.codingame.com/games)

## 相關連結

*   [演算法筆記 - Competitive Programming](http://www.csie.ntnu.edu.tw/~u91029/Algorithm.html#5)
