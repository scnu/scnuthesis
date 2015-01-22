SCNUThesis
=============

符合华南师范大学硕士/博士学位论文格式要求的 LaTeX 模板。

* 原作者：[@wzpan](http://github.com/wzpan)
* 维护者：招募中

## 相关页面 ##

:octocat: 项目主页: http://scnu.github.io/scnuthesis/

:octocat: 输出示例: http://scnu.github.io/scnuthesis/thesis.html

<img class="emoji" src="https://www.sharelatex.com/brand/logo/logo-64.png" height="20" width="20" align="absmiddle">
在线编辑：https://www.sharelatex.com/project/53075d2d4164da985a003334?r=76bc0f35&rs=ps&rm=d

## Table of Contents ##

* [简介](#简介)
* [模板特色](#模板特色)
* [版本历史](#版本历史)
* [下载须知](#下载须知)
* [安装使用](#安装使用)
* [如何参与](#如何参与)
* [其他说明](#其他说明)
* [特别感谢](#特别感谢)

## <a name="简介"></a>简介

符合华南师范大学硕士/博士学位论文格式要求的 [LaTeX](https://github.com/scnu/scnuthesis/wiki/%E6%BC%AB%E8%B0%88-LaTeX) 模板。关于这个项目的发起原因，请下载这个[slides](http://code.google.com/p/scnuthesis/downloads/detail?name=scnuthesis.pdf&can=2&q=)。

这个项目遵循[The LaTeX project public license](http://latex-project.org/lppl/)。在使用过程中如果有任何意见、建议或者疑惑，欢迎联系维护者。你可以：

  * 在[issues](https://github.com/scnu/scnuthesis/issues)板块提交意见和建议（推荐）；
  * 在[项目主页](http://scnu.github.io/scnuthesis/#comment)下方留言区留言；
  * 直接给维护者发邮件（不推荐）；
  * 但在你联系维护者之前，建议先认真看看这份[F&Q](https://github.com/scnu/scnuthesis/wiki/F&Q)。

**郑重声明**：这份模板由个人爱好者维护，并非学校提供的官方模板。如果因为使用这份模板蒙受了任何经济、学术上的损失，作者将不承担任何责任。

## <a name="模板特色"></a>模板特色

* 根据官方提供的华南师范大学学位论文格式要求进行开发，基本符合格式规范；
* 使用xelatex来处理中文，配置简单，同时支持TTF和OTF两种字体方案；
* 提供多个模板选项，用户在文档中只需修改一行内容，就可以指定不同的排版样式，包括硕士/博士论文封面、单面/双面排版、TTF/OTF字库选择、盲评/非盲评论文等；
* 针对不同的用户群体分别提供 basic 版本和 pro 版本，前者只包含编译论文所需要的格式宏包（master 分支），而后者还包含了模板的源代码（pro 分支）。

## <a name="版本历史"></a>版本历史 ##

详细的版本历史请查阅模板使用手册 scnuthesis.pdf 末尾的修改细节。

## <a name="下载须知"></a>下载须知 ##

* 对于普通用户，如果不需要定制本模板，请直接使用 master 分支，或者直接 [在线编辑](#在线编辑) 。
* 对于有更多 LaTeX 经验的用户，如果需要更多的定制，可以使用 pro 分支，这个分支比 basic 版多了模板的相关驱动文件。

## <a name="安装使用"></a>安装使用 ##

### 如果使用的是 Windows ###

1. 下载安装 MikTeX 或者 CTeX；
  
2. 使用 WinEdit 、TeXMaker 或其他文本编辑器打开 thesis.tex 文件。
  
3. 如果使用的是 Windows XP 或更早的 Windows 系列，请去掉第45行的vista选项，即将第45行内容改为：
  
```
\documentclass[master,twoside,ttf,chapterhead]{scnuthesis}
```
     
   如果使用的是 Windows Vista 或更高的版本，则不需要做任何改动。
	 
4. 双击模板目录下的 makepdf.bat，生成示例论文。

### 如果使用的是 Linux ###

1. 安装 TexLive；
  
2. 配置字体：将 Windows 下的 simsun.ttf, simhei.ttf, simkai.ttf，simli,ttf，simfang.ttf 拷贝到 `~/.fonts` 目录下；
  
  终端下输入

``` bash
$ fc-cache
```
     
  完成后输入

``` bash
$ fc-list :lang=zh
```
	  
  观察列表中是否有宋体等 Windows字体。
	  
3. 使用Emacs或其他文本编辑器打开thesis.tex文件。

4. 如果字体拷贝的来源是 Windows XP 或更早的 Windows 系列，请去掉第45行的vista选项，即将第45行内容改为：

```
\documentclass[master,twoside,ttf,chapterhead]{scnuthesis}
```

  如果来源是 Windows Vista 或更高的版本，则不需要做任何改动。
  
5. `cd` 进去模板目录，然后输入这条命令：

```
$ make
```

  将生成示例论文。

### <a name="在线编辑"></a>在线编辑 ###

1. 注册一个 [ShareLaTeX](https://www.sharelatex.com?r=76bc0f35&rm=d&rs=b) 账号；
2. 克隆 SCNUThesis 的[在线模板](https://www.sharelatex.com/project/53075d2d4164da985a003334?r=76bc0f35&rs=ps&rm=d)；
3. 在网站左侧的文件资源管理器中找到 thesis.tex 并打开；
4. 点击页面右上方的 Recompile 按钮，将生成示例论文。

![使用在线编辑器 ShareLaTeX 排版论文](http://ww1.sinaimg.cn/large/5ac2fba5jw1eds31ggkm8j218f0ozgto.jpg)

注意：由于在线模板已经预先配好了字体方案，因此去掉了 vista、ttf 和 otf 字体相关的选项。

## <a name="如何参与"></a>如何参与 ##

由于工作关系，[@wzpan](http://github.com/wzpan) 已经没有时间再维护 SCNUThesis。我们迫切希望得到更多 LaTeX 爱好者的支持，尤其是 _SCNUers_ 。如果要加入对 SCNUThesis 的贡献，你可以：

1. 到[官方 github 主页](http://github.com/scnu/scnuthesis/)上 fork 这个项目，做出你的修改，然后向 scnu 组织发送 pull request；
2. 给 [@wzpan](http://github.com/wzpan) 发送邮件，申请成为 scnu 组织的成员，你将具有 developer 的权限。

## <a name="其他说明"></a>其他说明 ##

具体的使用方法请参考附带的thesis.pdf示例文件。

**如果喜欢这份模板，请为这个项目加一颗星，谢谢！**

***Happy Texing!***

## <a name="特别感谢"></a>特别感谢 ##

这个模板的制作得到了很多高校的TEXer们的帮助，尤其是国防科大的 [NudtPaper](http://nudtpaper.googlecode.com) 和清华大学的 [Thu-Thesis](https://github.com/xueruini/thuthesis)，在这里要特别谢谢他们的热心帮助！
