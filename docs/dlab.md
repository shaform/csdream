---
id: dlab
title: 數位電路實驗
---

## 前言

數位電路實驗是[交大資工](http://www.cs.nctu.edu.tw/)大二下的[必修課程](http://www.cs.nctu.edu.tw/cswebsite/education/undergraduate/course#course_rule)，接續大二上的數位電路設計，這門課是教如何利用 [Verilog](http://en.wikipedia.org/wiki/Verilog) 硬體描述語言來設計數位電路。語言本身並不複雜，和 [C](http://en.wikipedia.org/wiki/C_%28programming_language%29) 也非常類似，主要會用到的部分很快就會學完。在數位電路設計課程使用的[《Digital Design》](http://www.anobii.com/books/Digital_Design/9780132340434/013c5a4c0df5bce483/)一書中便有硬體描述語言的章節，其中有許多不錯的習題可供練習。此外，十分推薦[《Verilog HDL》](http://www.anobii.com/books/Verilog_HDL/9780130449115/015bc4a19e58045815/)這本書，對 Verilog 語言有非常清楚的講解。要小心注意的是，Verilog 是用來[描述硬體的語言](http://en.wikipedia.org/wiki/Hardware_description_language)，有些寫法，雖然語義沒問題，但卻無法合成為實際的電路，或者是會因為訊號輸入不穩還是訊號延遲而產生奇怪的問題，Verilog 並非程式語言，這是數位電路實驗這門課裡最需注意的部份。若想對 Verilog 合成的議題有更深的了解，可以參考[《Verilog HDL Synthesis, A Practical Primer》](http://www.anobii.com/books/Verilog_HDL_Synthesis,_A_Practical_Primer/9780965039154/01d7d5de2c00d64b26/)這本書。此外，[XST User Guide](http://www.google.com/search?q=XST%20User%20Guide "XST User Guide") 也是合成電路時值得參考的文件。網路上的教學文件可參考：[WORLD OF ASIC](http://www.asic-world.com/verilog/index.html)。

## 環境

筆者的班是使用 [Xilinx ISE](http://en.wikipedia.org/wiki/Xilinx_ISE) 這套工具來模擬和設計電路，可以在官方網站上[下載這套軟體](http://www.xilinx.com/support/download/)，還有另一個班是使用 NCVerilog 來[跑模擬](http://en.wikipedia.org/wiki/List_of_Verilog_simulators)，不過若要將電路實際合成到 [FPGA](http://en.wikipedia.org/wiki/Field-programmable_gate_array) 上時，使用的都是 Xilinx ISE。如果你是使用 [Linux](http://en.wikipedia.org/wiki/Linux)，你也可以嘗試使用 [Icarus Verilog](http://iverilog.icarus.com/) 來模擬，參考：[Verilog @ Linux using Icarus Verilog](http://geekwentfreak.wordpress.com/2009/11/21/icarus-verilog-is-a-verilog-compiler-used-to-simulate-verilog-code-this-post-is-a-getting-started-tutorial-for-verilog-development-on-linux-tools-we-are-going-to-use-iverilog-vvp-gtkview-installa/)。

筆者當年使用的 FPGA 板是 Xilinx XC3S500E FG320，其上有數個開關、LED 燈、還有螢幕 VGA 、滑鼠、鍵盤等接頭。Verilog 模組透過和開發板上接頭的互動，可以讀入鍵盤、滑鼠的輸入，也可以輸出畫面到螢幕上。實驗課所寫的內容包括抽牌比大小的遊戲（用 LED 燈顯示大小）、以及用螢幕顯示的圈圈叉叉和打磚塊遊戲等等。這些輸出入背後的原理可參考[《FPGA Prototyping Using Verilog Examples》](http://www.anobii.com/books/FPGA_Prototyping_Using_Verilog_Examples/9780470185322/01c9fd481ed8540070/)，開發板取得不易，若有興趣或可參考[〈Xilinx Spartan-3E Starter Kit的基本裝備 〉](http://gary-digital.blogspot.com/2006/08/xilinx-spartan-3e-starter-kit.html)。

## 小提醒

在書上或老師的投影片上都有講一些[寫 Verilog 的基本原則](http://www.vlsichipdesign.com/index.php/Chip-Design-Articles/verilog-coding-styles.html)，有些寫法雖然可能會讓程式碼變長（如：一個 always block 只做一件事），不過往往會讓錯誤比較容易被找出來，以及，更重要的，讓你在寫 Verilog 時比較容易去想像每一個結構合成出來會是什麼樣的電路。

## 參考練習題

(注意如果你看不懂下面的名詞，或許該先行研習數位電路設計，參考[《Digital Design》](http://www.anobii.com/books/Digital_Design/9780132340434/013c5a4c0df5bce483/)。)

1.  設計一個  2x4 decoder。
2.  設計一個可以比較兩個 n-bit 輸入的 comparator。

## 相關連結

*   [Introductory Digital Systems Laboratory](http://dspace.mit.edu/bitstream/handle/1721.1/49431/6-111Spring2004/OcwWeb/Electrical-Engineering-and-Computer-Science/6-111Spring2004/CourseHome/index.htm)
*   [數位電路設計](http://ocw.nctu.edu.tw/riki_detail.php?pgid=170&amp;cgid=12)
*   [ModelSim](http://model.com/)
*   [fpga4fun](http://www.fpga4fun.com)
*   [FPGA 教學](http://www.youtube.com/watch?v=Q7z9dyL34n4)

## 其他

筆者當初的期末專題打磚塊遊戲已開放原始碼於 [ArkanoidOnVerilog @ github](https://github.com/shaform/ArkanoidOnVerilog)，其中也包含了我們整個修改的歷史。原始碼採 [GPLv3](http://www.gnu.org/licenses/gpl-3.0.html) 授權，在不改變授權方式下可自由修改與散布，歡迎參考。
