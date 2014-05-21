# 組合語言與系統程式

## 前言

組合語言與系統程式是[交大資工](http://www.cs.nctu.edu.tw/)大二的[必修課程](http://www.cs.nctu.edu.tw/cswebsite/education/undergraduate/course#course_rule)，使用的課本有兩本：

*   《[Assembly Language for x86 Processors](http://asmirvine.com/asm/ "Assembly Language for x86 Processors")》
*   《[An Introduction to Systems Programming](http://www.anobii.com/books/System_Software/9780201423006/01cf8efdb5f9826394 "An Introduction to Systems Programming")》

[組合語言](http://en.wikipedia.org/wiki/Assembly_language "Assembly Language")部份一開始是簡介 x86 電腦的基礎架構，然後就是學習組合語言的撰寫。組合語言和機器語言有直接對應的關係，是非常基層的程式語言。

系統程式的重心主要放在[組譯器](http://en.wikipedia.org/wiki/Assembly_language#Assembler)上，以書中提出的簡易 [SIC](http://en.wikipedia.org/wiki/Simplified_instructional_computer) 組合語言為例，解釋組譯器如何將組合語言翻譯成可執行的機器語言，也有可能教到 [Linker](http://en.wikipedia.org/wiki/Linker_%28computing%29) 和 [Loader](http://en.wikipedia.org/wiki/Loader_%28computing%29)。

## 學習資源

這門課所使用的組語教科書在每章背後都有程式練習題，建議自修時可以一題一題的寫，一定會收穫良多。系統程式雖然教的是普遍的概念，但是所使用的 SIC 架構是《An Introduction to Systems Programming》這本書提出的，所以最好能直接看教科書，筆者在修這堂課時寫了一個簡易的 SIC/XE 組譯器，認為實做確實能加深對課本的理解。

組語的學習資源還可以參考

*   [x86 Assembly](http://en.wikibooks.org/wiki/X86_Assembly)
*   [小木偶的網頁](http://home.educities.edu.tw/wanker742126/ "小木偶的網頁")
*   [PC Assembly](http://www.drpaulcarter.com/pcasm/) (NASM 格式)

這門課的組譯器主要是使用 [MASM](http://en.wikipedia.org/wiki/Microsoft_Macro_Assembler)，由於不同組譯器有不同格式的寫法，若想為這門課做準備，得稍微注意，建議直接買課本來看。但 [x86 的指令集](http://en.wikipedia.org/wiki/X86_instruction_listings)是通用的。

為了學習的方便，一些像是印出字元的函式皆由書中搭配的函式庫 [Irvine](http://asmirvine.com/asm/examples/index.htm) 提供，詳細的設置方法以及下載處可[至作者網站查詢](http://asmirvine.com/asm/ "Assembly Language for x86 Processors, 6th edition")。

## 環境設定

作者的環境設定法是使用 [Microsoft Visual Studio](http://en.wikipedia.org/wiki/Visual_Studio)，使用專業版或可免費下載的[簡易版](http://www.microsoft.com/express)皆可，若你是交大的學生，可參考[國立交通大學校園授權軟體服務網](http://ca.nctu.edu.tw/)取得專業版下載。

即使你不想使用 Visual Studio 來撰寫組語，安裝它仍是取得 MASM 最方便的方法，以下提供一個簡易的組譯環境設置法：

1.  安裝 Visual Studio。
2.  下載並安裝對應的 [Irvine 函式庫及工具](http://asmirvine.com/asm/examples/index.htm)。
3.  下載 [Batch Sample](http://asmirvine.com/asm/gettingStartedVS2010/BatchSampleVS2010.zip) 並將 asm32.bat 放入 Irvine 安裝路徑（如 C:\Irvine）。

現在，假設你把 Irvine 安裝在 C:\Irvine，而你的組語檔案為 C:\ASM\hello.asm。

執行 [cmd](http://en.wikipedia.org/wiki/Command_Prompt) 並[切換到 C:\ASM 目錄](http://ss64.com/nt/cd.html)，然後執行 C:\Irvine\asm32.bat hello。（注意組譯時不輸入 .asm 副檔名。）

asm32.bat 會自動用 Visual Studio 內附的 MASM 幫妳把當前資料夾裡的 hello.asm 組譯成 hello.exe。 

若要組譯 16-bit DOS exe 則改用 C:\Irvine\make16.bat。

若發生任何錯誤有可能是你安裝的路徑和它預設的不同，此時找到 asm32.bat 和 make16.bat 檔並開啟編輯，分別找到以下路徑，並變更為你 VS 的正確路徑。

```
// for asm32.bat
set VS_HOME=C:\Program Files\Microsoft Visual Studio 10.0

// for make16.bat
SET MASM="C:\Program Files\Microsoft Visual Studio 10.0\VC\bin\"
```

或者是你 Irvine 安裝路徑不同，此時找到任何有提到 Irvine 的路徑，並變更它們。

```
// for asm32.bat
set INCLUDE=C:\Irvine;%INCLUDE%
set LIB=%VS_HOME%\VC\LIB;C:\Irvine;%LIB%

// for make16.bat
SET INCLUDE=C:\Irvine
SET LIB=C:\Irvine
c:\Irvine\LINK16 %1,,NUL,Irvine16 /CODEVIEW;
```

若你有機會要組譯 16-bit COM 程式，則複製一份 make16.bat，更名為 makecom.bat 之類。然後在 LINK16 那行加入 /T，如下所示：

```
c:\Irvine\LINK16 %1,,NUL,Irvine16 /T /CODEVIEW;
```

假設你不想安裝 Visual Studio，參考[小木偶的網頁](http://home.educities.edu.tw/wanker742126/win32asm/w32asm_ch00.html)，可以下載 [MASM32 安裝包](http://www.movsd.com/masmdl.htm)。
同樣下載 Irvine 等檔案並安裝，此時需變動以下部份：

```
// for asm32.bat
// 改為 masm32 之路徑
set VS_HOME=C:\masm32
// 改為 masm32 的資料夾架構
set PATH=%VS_HOME%\bin;%PATH%
set LIB=%VS_HOME%\lib;C:\Irvine;%LIB%
// 改為 masm32 接受的參數
for %%F in (%1 %2 %3 %4 %5) do ml /c /coff %%F.asm
// 刪除 /DEBUG
SET LINKCMD=link /NOLOGO  /SUBSYSTEM:CONSOLE irvine32.lib kernel32.lib user32.lib

// for make16.bat
// 去掉 "" 並改為 masm32 之路徑
SET MASM=C:\masm32\bin\
// 把 -c -omf 等等都改為 /c /omf
%MASM%ML /nologo /c /omf /Fl /Zi %1.asm
```

如此一來，即可透過指令組譯程式，編輯 asm 檔則可使用任意編輯器，以 [Vim](http://www.vim.org/) 為例：

### Vim 設定

在 vimrc 檔案中加入以下設定可使 Vim 自動偵測 MASM 格式的 asm 檔並給予適當的原始碼上色。

```vimrc
let filetype_asm = "asm"
let asmsyntax = "masm"
```

在你寫的 asm 檔的最後一行加入以下這行可以強制 Vim 用空白代替 Tab，避免組合語言的對齊問題。

```
; vim: set et:
```

## 小提醒

這門課一定要做多一點的練習，而不要只是看課本，這樣子進步才快。
若您的老師的期末 Project 也是組譯器的撰寫，建議可以從開學就開始動手，一方面可以搭配研讀系統程式的課本，二方面也能避免期末的作業量太大和期末考的緊湊。

## 參考練習題

寫組語程式達成：

1.  輸入兩個32-bit正整數，輸出其最小公倍數。
2.  輸入一個正整數，判斷它是否為質數。
3.  輸入兩個正整數，輸出他們的和（用 BCD 做內部表示及運算。）

## 參考

*   [Introduction to Systems Software](http://www.unf.edu/~cwinton/html/cop3601/s10/3601menu.html)
*   [Intel Assembler 80x86 CodeTable](http://www.jegerlehner.ch/intel/)
*   [Professional Assembly Language](http://www.amazon.com/Professional-Assembly-Language-Programmer/dp/0764579010/) (Linux 平台)
*   [The Art of Assembly Language Programming](http://homepage.mac.com/randyhyde/webster.cs.ucr.edu/index.html "The Art of Assembly Language Programming") (使用 [HLA](http://en.wikipedia.org/wiki/High_Level_Assembly))
