---
id: micro
title: 微處理機系統實驗
---

## 前言

微處理機系統實驗是[交大資工](http://www.cs.nctu.edu.tw/)大三上的[課程](http://www.cs.nctu.edu.tw/cswebsite/education/undergraduate/course#course_ruleu)，在這門課中，學生將會撰寫在 [microcontroller](http://en.wikipedia.org/wiki/Microcontroller) 上執行的程式，利用實驗版或甚至[麵包版](http://en.wikipedia.org/wiki/Breadboard)，實際使單晶片和環境互動。所謂的 microcontroller，指的是把中央處理器、記憶體、各種輸入出介面等等都整合在一起的小型計算機。雖然計算能力沒有一般電腦的 CPU 好，但體積小而便宜，被運用在簡單的嵌入式系統中。這堂課使用的微處理機為 [8051](http://en.wikipedia.org/wiki/Intel_MCS-51)，使用的語言主要為 8051 的[組合語言](http://en.wikipedia.org/wiki/Assembly_language)，但有些班也可能使用 8051 C 來做更複雜的操作。

在課程中將會操作許多的[輸出入](http://www.edsim51.com/8051Notes/interfacing.html#switches)，包含按鍵、開關、[數字鍵盤](http://www.edsim51.com/8051Notes/interfacing.html#keypad)、透過[光敏電阻](http://en.wikipedia.org/wiki/Photoresistor)與[熱感電阻](http://en.wikipedia.org/wiki/Thermistor)配合 [ADC](http://www.edsim51.com/8051Notes/interfacing.html#adc) 讀取環境的值。或者是 [LED 燈](http://www.edsim51.com/8051Notes/interfacing.html#LED)、[七段顯示器](http://en.wikipedia.org/wiki/Seven-segment_display)、[點矩陣顯示器](http://en.wikipedia.org/wiki/Dot-matrix_display)的輸出，控制馬達、[蜂鳴器](http://en.wikipedia.org/wiki/Buzzer)，甚至是利用 [RS-232](http://en.wikipedia.org/wiki/RS-232) 和電腦溝通等等。

筆者的期末專題是一個搶答遊戲，利用 RS-232 從電腦終端機顯示題目，兩個玩家透過按鍵搶答，答對時玩家的四驅車會前進，誰先到達終點即獲勝，題目中也有利用蜂鳴器來實做的猜歌題。也有同學是做打地鼠遊戲。

## 學習資源

這堂課為重實做的課程，練習絕不可少。而讀者若有學過[「組合語言與程式程式」](asm.md)，8051 的環境細節與組語的內容其實不深，很快就能進入狀況。讀者可以參考[《The 8051/8052 Microcontroller》](http://www.anobii.com/books/The_80518052_Microcontroller/9781581124590/01e16172d421418885/)裡 8051 與組語的基本介紹。或者另外一本[《The 8051 Microcontroller》](http://www.anobii.com/books/The_8051_Microcontroller/9780132059756/012c3ffdf46bc4f92d/)有更全面的教學及練習題。對於 8051 C 的部份，和原始 C 的差別其實不大。讀者可參考：[《Embedded C》](http://www.anobii.com/books/Embedded_C/9780201795233/01f6c453eaca6d73f8/)。而市面上也可找到不少以實做為導向的單晶片中文書籍。

網路上也有不少教學資源：

*   [Architecture and Programming of 8051 Microcontrollers](http://www.mikroe.com/eng/products/view/267/architecture-and-programming-of-8051-mcu-s/)
*   [89S52 microcontroller quick tutorial](http://www.ikalogic.com/tut_8051_1.php)
*   [8051 教材資源](http://media.nihs.tp.edu.tw/user/yangmf/?active=media)

## 環境

開發環境可以使用 [Keil C51 µVision IDE](http://www.keil.com/c51/ca51kit.asp)，不管是組語或者 C 都可以組/編譯。如果你使用 [Linux 系](http://en.wikipedia.org/wiki/List_of_Linux_distributions)的作業系統，也可以使用 [MCU 8051 IDE](http://mcu8051ide.sourceforge.net/)，不過需注意兩者語法稍有不同。另外一個和 MCU 8051 IDE 語法類似且在 Windows 上使用的是 [MIDE-51](http://www.opcube.com)。其中，Keil C 是多數書籍主要使用的開發環境，但免費版對程式大小有些許限制，另外兩個 IDE 則無。

由於有很多學校皆有 8051 的課程，開發板取得非常容易。搜尋「8051 開發板」、「8051 實驗板」皆可找到不少商家販賣。開發時，可以使用 [ICE](http://en.wikipedia.org/wiki/In-circuit_emulator) 和電腦連結，即時模擬程式在 8051 上執行的結果，也可以利用燒錄器實際燒到 8051 上再執行。前者較為方便，也較容易除錯，所以通常在開發早期皆透過 ICE 執行程式，事實上在課程中你幾乎不會需要把程式實際燒錄到 8051 上。燒錄器和模擬器皆可在網路上購買。和 8051 相容的單晶片非常多，基本款的十分便宜，在一般的電子材料行皆可購買。其他一些週邊材料也多半可在電子材料行購買到。或者你也可到 [iCshop](http://www.icshop.com.tw) 等網路商店找找看。

## 參考練習題

1.  用七段顯示器製作配合按鍵製作可設定的時鐘。
2.  用七段顯示器和數字鍵盤實做計算機。
3.  用蜂鳴器播放一段音樂。

## 延伸閱讀

筆者想在這裡介紹另一個平台：[Arduino](http://en.wikipedia.org/wiki/Arduino)。他具有很低的入門門檻，且近年在各國學校裡愈來愈流行。他是一個開放的硬體開發平台，不僅軟體原始碼是開放的，連硬體電路設計圖都是開放的，玩家甚至可以自行組裝出 Arduino。可參考：[Arduino 簡介](http://yehnan.blogspot.com/2012/02/arduino.html)。而由於具有豐富的函式庫，玩家可以輕易的寫出複雜的功能。種種因素讓 Arduino 深受業餘玩家的喜愛。在台灣，玩 Arduino 的人也漸漸增加，慢慢形成一個社群。

這也是筆者在此介紹他的原因，若讀者對自己動手作專題很有興趣，但對組語或其他硬體知識並不熟悉，則 Arduino 非常值得一試。他的開發工具從硬體、模擬器、IDE、燒錄器，通通都有官方套件，台灣也有代理商可購買。

## 相關連結

*   [8051/8052 Instruction Set](http://www.8052.com/set8051)
*   [8051 相關文章](http://single9.net/category/embedded-system/8051/)
*   [Arduino 筆記 – 認識 Arduino ](http://coopermaa2nd.blogspot.com/2010/12/arduino-arduino.html)
*   [Arduino.TW 樂園](http://arduino.tw/)
