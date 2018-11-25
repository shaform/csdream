---
title: 正規語言概論
aliases:
  - /docs/fl.html
---

# 正規語言概論

## 前言

正規語言概論是[交大資工](http://www.cs.nctu.edu.tw/)大三上的[必修課程](http://www.cs.nctu.edu.tw/cswebsite/education/undergraduate/course#course_ruleu)。這門課的課題是基礎的[計算理論](http://en.wikipedia.org/wiki/Theory_of_computation)，研究什麼是電腦的能力和極限。介紹各種[計算模型](http://en.wikipedia.org/wiki/Automata_theory)，例如 [DFA](http://en.wikipedia.org/wiki/Deterministic_finite_automata), [NFA](http://en.wikipedia.org/wiki/Nondeterministic_finite_automata), [PDA](http://en.wikipedia.org/wiki/Pushdown_automaton), [Turing machines](http://en.wikipedia.org/wiki/Turing_machine) 等等，以及其相對應的[正規語言](http://en.wikipedia.org/wiki/Formal_language)，如 [regular languages](http://en.wikipedia.org/wiki/Regular_language), [context free languages](http://en.wikipedia.org/wiki/Context-free_language), [Turing-decidable languages](http://en.wikipedia.org/wiki/Recursive_language) 等等。也會探討問題間的 [Reduction](http://en.wikipedia.org/wiki/Reduction_%28recursion_theory%29) 以及問題的 [Complexity](http://en.wikipedia.org/wiki/Computational_complexity_theory) 等等。

系上使用的教科書主要是《[Introduction to the Theory of Computation](http://www.amazon.com/Introduction-Theory-Computation-Michael-Sipser/dp/0534950973/ref=dp_ob_title_bk)》不過也有老師使用《[Introduction to Automata Theory, Languages, and Computation](http://www.amazon.com/Introduction-Automata-Theory-Languages-Computation/dp/0321455363/ref=dp_ob_title_bk)》。

## 簡介

透過計算模型，我們可以對計算定下明確的數學定義。而一旦有了明確的定義，便可以研究什麼是可計算的、什麼是不可計算的，而對於可計算的問題，必須花費多少時間和空間才可能計算。

[Church–Turing thesis](http://en.wikipedia.org/wiki/Church%E2%80%93Turing_thesis) 指出，所有[演算法](http://en.wikipedia.org/wiki/Algorithm)可解的問題，都可透過 Turing machines 求解，也因此，藉由研究 Turing machines 我們得以探討電腦的極限，以及對各種問題的難度訂出明確的界線。

這是一門非常理論與數學的課，需要非常清晰的邏輯思考。老師曾說，資訊界日新月異，許多課程可能幾年後就不見了，或者教的東西大幅改變。但你幾乎可以確定，正規語言這門課還是會一直存在。從哲學的角度來說，計算理論在電腦科學裡佔了十分核心的地位。

正規語言課程所學的東西其實也有很多延伸的應用，以至於很多讀者很可能早已接觸過某些部份，但直到這門課，才真正以嚴謹的方式學習背後的來歷。像是如果有接觸像 [Python](http://en.wikipedia.org/wiki/Python_%28programming_language%29) 等語言或者用過 [Vim](http://en.wikipedia.org/wiki/Vim_%28text_editor%29) 等編輯器的搜尋功能的讀者，很有可能有接觸過[正規表示式](http://en.wikipedia.org/wiki/Regular_expression)。而 [CFG](http://en.wikipedia.org/wiki/Context-free_grammar) 和程式語言的設計以及編譯器等課程有密切相關，你或許會曾在程式語言的文件上看過他。如果在演算法等課程聽過 [NP](http://en.wikipedia.org/wiki/NP_%28complexity%29)、[P](http://en.wikipedia.org/wiki/P_%28complexity%29) 等名詞，在這堂課裡，你可以學到這些名詞到底有什麼含意。而對什麼是演算法，時間複雜度、問題的可計算性等等，都會在這堂課得到更深的理解。

## 學習小指引

課本本身寫的很好，建議將《[Introduction to the Theory of Computation](http://www.amazon.com/Introduction-Theory-Computation-Michael-Sipser/dp/0534950973/ref=dp_ob_title_bk)》研讀數遍，並配合書中練習題。

## 參考

*   [Computability and Complexity](http://en.wikibooks.org/wiki/Computability_and_Complexity)
*   [Automata, Computability, and Complexity](http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-045j-automata-computability-and-complexity-spring-2005/)
*   [Regular Expression (RegExp) in JavaScript](http://blog.roodo.com/rocksaying/archives/2670695.html)
