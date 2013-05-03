SCNUThesis
=============

# 简介 #

符合华南师范大学硕士/博士学位论文格式要求的 [LaTeX](https://github.com/wzpan/scnuthesis/wiki/%E6%BC%AB%E8%B0%88-LaTeX) 模板。关于这个项目的发起原因，请下载这个[slides](http://code.google.com/p/scnuthesis/downloads/detail?name=scnuthesis.pdf&can=2&q=)。


这个项目遵循[The LaTeX project public license](http://latex-project.org/lppl/)，我们迫切希望得到更多LaTeX爱好者的支持，尤其是 _SCNUers_ 。如果要加入我们，请联系作者。

在使用过程中如果有任何意见、建议或者疑惑，欢迎联系作者。你可以：

  * 在[issues](https://github.com/wzpan/scnuthesis/issues)板块提交意见和建议；
  * 直接给作者发邮件（不推荐）；
  * 但在你联系作者之前，建议先认真看看这份[F&Q](https://github.com/wzpan/scnuthesis/wiki/F&Q)。


# 郑重声明 #

这份模板目前还处于个人开发阶段，并非学校提供的官方模板。如果因为使用这份模板蒙受了任何经济、学术上的损失，作者将不承担任何责任。


# 模板特色 #

* 根据官方提供的华南师范大学学位论文格式要求进行开发，基本符合格式规范；
* 使用xelatex来处理中文，配置简单，同时支持TTF和OTF两种字体方案；
* 提供多个模板选项，用户在文档中只需修改一行内容，就可以指定不同的排版样式，包括硕士/博士论文封面、单面/双面排版、TTF/OTF字库选择、盲评/非盲评论文等；
* 针对不同的用户群体分别提供basic版本和pro版本，前者只包含编译论文所需要的格式宏包，而后者还包含了模板的源代码。


# 版本历史 #

* 默认不启用chapterhead选项，默认使用vista字库
* 说明文档封面增加项目主页信息 
* 偶数页眉由华师信息改为论文标题，修改thesis.tex
* 增加了Readme.md和Changelog
* 默认master分支取代basic分支，去掉basic分支
* 项目迁移至github
* 修正basic版无法make成功的问题
* 去掉thesis.tex中多余的内容
* 使用 ulem 宏包替代 kulem 宏包，以解决 MikTeX 编译出错的问题
* 修复了几个错误，重新使用Makefile
* 修复少量错误
* 删除 test.sh 文件
* 增加了 README 和 README.txt
* 修复少量错误
* 修复了参考文献编译出错的问题
* 使用shell脚本取代原来的Makefile
* 删掉了没用的文件
* 修改了模板帮助文档的错误
* 改为使用git版本控制系统
* 增加 chapterhead 选项
* 去掉了第一章中的表格和插图示例，统一在第二章中说明


# 下载须知 #

* 对于普通用户，如果不需要定制本模板，请直接使用master分支。
* 对于有更多LaTeX经验的用户，如果需要更多的定制，可以使用pro分支，这个分支比basic版多了模板的相关驱动文件。

# 使用方法 #

## 简单安装过程 ##

### 如果使用的是 Windows ###

1. 下载安装 MikTeX 或者 CTeX；
  
2. 使用 WinEdit 、TeXMaker 或其他文本编辑器打开 thesis.tex 文件。
  
3. 如果使用的是 Windows XP 或更早的 Windows 系列，请去掉第45行的vista选项，即将第45行内容改为：
  
     `\documentclass[master,twoside,ttf,chapterhead]{scnuthesis}`
     
     如果使用的是 Windows Vista 或更高的版本，则不需要做任何改动。
	 
4. 双击模板目录下的 makepdf.bat，生成示例论文。

### 如果使用的是 Linux ###

1. 安装 TexLive；
  
2. 配置字体：将 Windows 下的 simsun.ttf, simhei.ttf, simkai.ttf，simli,ttf，simfang.ttf 拷贝到 `~/.fonts` 目录下；
  
  终端下输入
     
  `fc-cache`
     
  完成后输入
     
  `fc-list :lang=zh`
	  
  观察列表中是否有宋体等 Windows字体。
	  
3. 使用Emacs或其他文本编辑器打开thesis.tex文件。

4. 如果字体拷贝的来源是 Windows XP 或更早的 Windows 系列，请去掉第45行的vista选项，即将第45行内容改为：

  `\documentclass[master,twoside,ttf,chapterhead]{scnuthesis}`

  如果来源是 Windows Vista 或更高的版本，则不需要做任何改动。
  
5. `cd` 进去模板目录，然后输入这条命令：
  
  `make`
	  
  将生成示例论文。

  具体使用方法请参考附带的scnuthesis.pdf文件。

  *Happy Texing!*

# 特别感谢 #

这个模板的制作得到了很多高校的TEXer们的帮助，尤其是国防科大的 [NudtPaper](http://nudtpaper.googlecode.com) 和清华大学的 [Thu-Thesis](https://github.com/xueruini/thuthesis)，在这里要特别谢谢他们的热心帮助！
