---
id: intro-to-crypto
title: 密碼學概論
---

## 前言

密碼學概論是[交大資工](http://www.cs.nctu.edu.tw/)大三的[課程](http://www.cs.nctu.edu.tw/cswebsite/education/undergraduate/course#course_ruleu)，課程的主題，[Cryptography](http://en.wikipedia.org/wiki/Cryptography)，旨在探討加密背後的數學原理，如何在第三方可以攔截或假造訊息的情況下，加密訊息以保證僅有信任的人可以得知真正的內容。也會討論延伸的議題如 [digital signature](http://en.wikipedia.org/wiki/Digital_signature), [secret sharing](http://en.wikipedia.org/wiki/Secret_sharing) 等等。歷年來使用的課本不一，筆者建議可以從《[An Introduction to Mathematical Cryptography](http://www.anobii.com/books/An_introduction_to_mathematical_cryptography/9780387779935/01d1f0ac2e6bef0a67/ "An Introduction to Mathematical Cryptography")》開始讀起，也可參考：〈[Books on Cryptography](http://en.wikipedia.org/wiki/Books_on_cryptography)〉。一部分使用的數學工具如[中國餘式定理](http://en.wikipedia.org/wiki/Chinese_remainder_theorem)等等在〈[離散數學](discrete-math.md)〉已有提及。

## 簡介

這堂課一開始會先簡介古典的各種加密法如[字母代換](http://en.wikipedia.org/wiki/Substitution_cipher)，並說明為何這種加密法可以透過簡單的分析破解。接下來，開始建立基本的數學基礎，包含：

*   [Modular Arithmetic](http://en.wikipedia.org/wiki/Modular_arithmetic)
*   [Finite field](http://en.wikipedia.org/wiki/Finite_field)
*   [Chinese Remainder Theorem](http://en.wikipedia.org/wiki/Chinese_remainder_theorem)
*   [Legendre symbol](http://en.wikipedia.org/wiki/Legendre_symbol)
*   [Jacobi symbol](http://en.wikipedia.org/wiki/Jacobi_symbol)

接下來，便從基本的 [Symmetric-key algorithm](http://en.wikipedia.org/wiki/Symmetric_key_algorithm) 概念開始講起，在此種加密法中，訊息的發送者與接受者使用同一把密鑰來加密與解密，其他人若沒有此鑰匙，便無法輕易解出內容。

除了介紹 [stream ciphers](http://en.wikipedia.org/wiki/Stream_cipher), [block ciphers](http://en.wikipedia.org/wiki/Block_ciphers) 等兩種主要分類外，也會介紹幾種目前常見的加密法：[DES](http://en.wikipedia.org/wiki/Data_Encryption_Standard), [AES](http://en.wikipedia.org/wiki/Advanced_Encryption_Standard)。

然而，此類加密法衍生出一個問題：如果無法安全的傳遞訊息，那麼那把共享的密鑰，一開始究竟要如何交給你要傳送訊息的對象呢？以此問題為開端，延伸出了一個新的概念：[Public-key cryptography](http://en.wikipedia.org/wiki/Public-key_cryptography)，在此類加密法中，人們通常可以透過一個公開的公鑰加密訊息，可是這加密的訊息卻只有透過與公鑰相對應的私鑰才能解開。所以只要公佈你的公鑰卻保留妳的私鑰，則任何人都可以加密，但卻只有妳可以解密。其中最著名的例子或許就是 [RSA](http://en.wikipedia.org/wiki/RSA_%28algorithm%29)。

即使在加密法、解密法和公鑰都已知的情況下，攻擊者仍無法輕易的解出私鑰或者加密的內容，這樣特別的數學性質，便是接下來討論的重點。

*   [Factorization](http://en.wikipedia.org/wiki/Factorization)
*   [Primality test](http://en.wikipedia.org/wiki/Primality_test)
*   [Discrete logarithm](http://en.wikipedia.org/wiki/Discrete_logarithms)
*   [Hash function](http://en.wikipedia.org/wiki/Hash_function)

最後還有碰觸到許多延伸課題：

*   [Digital signature](http://en.wikipedia.org/wiki/Digital_signature)
*   [Blind signature](http://en.wikipedia.org/wiki/Blind_signature)
*   [Pairing-based cryptography](http://en.wikipedia.org/wiki/Pairing-based_cryptography)
*   [Elliptic curve cryptography](http://en.wikipedia.org/wiki/Elliptic_curve_cryptography)

## 其他

在這堂課裡，也會自己實做各種加密法的程式。筆者將實做 [RC4](http://en.wikipedia.org/wiki/RC4) 及 [SHA-1](http://en.wikipedia.org/wiki/SHA-1) 的程式碼放在 [@nctu-crypto-100](https://github.com/shaform/nctu-crypto-100)，可供參考。

## 參考

*   [Cryptography](http://en.wikibooks.org/wiki/Cryptography)
*   [Cryptography, An Introduction](http://www.cs.bris.ac.uk/~nigel/Crypto_Book/)
