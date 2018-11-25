---
title: 程式語言
aliases:
  - /docs/prog-lang.html
---

# 程式語言

## 前言

程式語言是[交大資工](http://www.cs.nctu.edu.tw/)大二的[必修課程](http://www.cs.nctu.edu.tw/cswebsite/education/undergraduate/course#course_ruleu)(自101學年後已非必修)，使用的課本為《[Concepts of Programming Languages](http://www.amazon.com/Concepts-Programming-Languages-Robert-Sebesta/dp/0131395319/ref=dp_ob_title_bk "Concepts of Programming Languages")》。在這堂課中，會概略討論程式語言設計的原則，並簡單介紹[程式語言發展的歷史](http://en.wikipedia.org/wiki/History_of_programming_languages)以及設計[程式語言](http://en.wikipedia.org/wiki/Programming_language)的原理，包含語言的語法以及各種程式結構與特性的實做方式等等。值得注意的是這堂課並非學習使用程式語言的入門課程，而是探討程式語言背後的設計原理。而學生若先擁有寫程式的經驗也能對課程擁有較好的理解。

## 課程內容

課程主題主要可分為三個大項，第一是語言的格式和語法。例如敘述語言 [Syntax](http://en.wikipedia.org/wiki/Syntax_%28programming_languages%29) 的 [Context-free grammar](http://en.wikipedia.org/wiki/Context-free_grammar)、[BNF](http://en.wikipedia.org/wiki/Backus-Naur_Form "BNF")，還有用分析算術運算式為例子介紹 [Lexical Analysis](http://en.wikipedia.org/wiki/Lexical_analysis "Lexical Analysis") 和 [Parsing](http://en.wikipedia.org/wiki/Parsing) 等概念。這部份在[正規語言概論]({{< relref "/docs/fl.md" >}})和編譯器設計概論課程中也會再次提到。

第二則是根據設計程式語言時會遇到的幾項課題，比較各種不同設計的優缺點、實做的方法，以及提一些實際語言的例子。

*   [Variable](http://en.wikipedia.org/wiki/Variable_%28computer_science%29), 包含命名、[範圍](http://en.wikipedia.org/wiki/Scope_%28computer_science%29)等等。
*   [Data type](http://en.wikipedia.org/wiki/Data_type)
*   [Expression](http://en.wikipedia.org/wiki/Expression_%28programming%29)
*   [Control flow](http://en.wikipedia.org/wiki/Control_flow)
*   [Subroutine](http://en.wikipedia.org/wiki/Subroutine), 參數傳遞、[Call stack](http://en.wikipedia.org/wiki/Call_stack) 等等。
*   [Abstract data type](http://en.wikipedia.org/wiki/Abstract_data_type)
*   [Concurrency](http://en.wikipedia.org/wiki/Concurrency_%28computer_science%29)
*   [Exception](http://en.wikipedia.org/wiki/Exception_handling)

最後則是介紹程式語言的幾種[不同設計哲學](http://en.wikipedia.org/wiki/Comparison_of_programming_paradigms)：

*   [Imperative programming](http://en.wikipedia.org/wiki/Imperative_programming)
*   [Object-oriented programming](http://en.wikipedia.org/wiki/Object-oriented_programming)
*   [Functional programming](http://en.wikipedia.org/wiki/Functional_programming)
*   [Logic programming](http://en.wikipedia.org/wiki/Logic_programming)

## 程式語言

許多語言設計的精神如 functional languages，和常用的程式語言有很大不同。若能實際嘗試使用語言，常能獲得較深的理解，所以有些老師也會讓學生實際學習使用其中的一兩種語言，以下便條列幾個較知名的程式語言：

*   [Python](http://en.wikipedia.org/wiki/Python_%28programming_language%29)：十分易學且易讀的程式語言，同時也受到廣泛運用。除了擁有 imperative 和 object-oriented 的特性之外，也有一些 functional programming 功能。網路上的教學資源非常的多，如：[The Python Tutorial](http://docs.python.org/py3k/tutorial/ "The Python Tutorial")、[Python 教學](http://www.ez2learn.com/index.php/python-tutorials)
*   [Java](http://en.wikipedia.org/wiki/Java_%28programming_language%29)：廣受使用的 objecti-oriented 語言，可參考 [The Java Tutorials](http://docs.oracle.com/javase/tutorial/)、書籍推薦[《Head First Java》](http://shop.oreilly.com/product/9780596009205.do)。
*   [Haskell](http://en.wikipedia.org/wiki/Haskell_%28programming_language%29)：純粹的 functional programming language，可參考 [Haskell Introduction](http://www.haskell.org/haskellwiki/Introduction) 的介紹。網路上也有優質的學習資源：[Learn You a Haskell](http://learnyouahaskell.com/)。
*   [Prolog](http://en.wikipedia.org/wiki/Prolog)：相當知名的 logic programming language。
*   [C/C++](http://en.wikipedia.org/wiki/C%2B%2B)：在交大資工課程中最常使用的語言。

## 參考

*   [Why Study Programming Languages?](http://www.cs.sfu.ca/~cameron/Teaching/383/WhyStudy.html)
*   [Measuring programming language popularity](http://en.wikipedia.org/wiki/Measuring_programming_language_popularity)
*   [Programming Languages](http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-821-programming-languages-fall-2002)
*   [Programming Languages and Compilers](http://webcast.berkeley.edu/playlist#c,d,Computer_Science,03D59E2ECDDA66DF)
