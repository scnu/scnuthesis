%%
%% Copyright (C) 2012 by Joseph Pan <cs.wzpan@gmail.com>
%%
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%%
%% http://www.latex-project.org/lppl.txt
%%
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%%

重要说明：
如果编译过程中遇到问题，请先认真观看附带的scnuthesis.pdf文件里的使用说明。

* 简单安装过程
-------------------
1) 如果使用的是 Windows
  1. 安装 CTeX；
  2. 使用 WinEdit 或其他文本编辑器打开 thesis.tex 文件。
  3. 如果使用的是 Windows Vista 或 Windows 7，请将第43行内容改为：
           \documentclass[master,twoside,vista,ttf]{scnuthesis}
     如果使用的是 Windows XP，则不需要做任何改动。
  4. 双击模板目录下的 makepdf.bat，生成示例论文。

2) 如果使用的是 Linux
  1. 安装 TexLive；
  2. 配置字体：将 Windows 下的 simsun.ttf, simhei.ttf, simkai.ttf，simli,ttf，simfang.ttf 拷贝到/usr/share/fonts/TTF下；
     终端下输入
          sudo fc-cache
     完成后输入
          fc-list :lang=zh
     观察列表中是否有宋体等 Windows字体，如果没有，还需要cd进去 /usr/share/fonts/TTF 目录将刚刚拷贝进去的几个字体文件的权限设置为777：
	  cd /usr/share/fonts/TTF && chmod 777 *.ttf *.TTF
  3. 使用Emacs或其他文本编辑器打开thesis.tex文件。
  4. 如果字体拷贝的来源是Windows Vista 或 Windows 7，请将第43行内容改为：
      \documentclass[master,twoside,vista,ttf]{scnuthesis}
     如果来源是Windows Vista或Windows 7，则不需要做任何改动。
  5. cd进去模板目录，然后输入这条命令：
	  make
     将生成示例论文。

具体使用方法请参考附带的scnuthesis.pdf文件。

Happy Texing!
