# `~/.vim/colors/`
* Vim将会查找~/.vim/colors/mycolors.vim并执行它
* 这个文件应该包括生成你的配色方案所需的一切Vimscript命令

# `~/.vim/plugin/`
* `~/.vim/plugin/`下的文件将在每次Vim启动的时候执行
* 这里的文件包括那些无论何时，在启动Vim之后你就想加载的代码

# `~/.vim/ftdetect/`
* `~/.vim/ftdetect/`下的文件在每次你启动Vim的时候也会执行。
* ftdetect是"filetype detection"的缩写,这里的文件仅仅负责启动检测和设置文件的filetype类型的自动命令

# `~/.vim/ftplugin/`
* `~/.vim/ftplugin/`是文件类型的插件，为'filetype plugin'的缩写，是以其加载基于文件名
* 使用方法（其可以强制这样使用，一般vim打开时候已经基于文件名做了加载）
    * 在vim中输入:set filetype=python,则vim会到找`~/.vim/ftplugin/python.vim`这个插件，如果有则执行
    * 当然，其也可以是文件夹的形式，如找`~/.vim/ftplugin/python/*.vim`,找到则执行其下面所有的vim插件

# `~/.vim/indent/`
* indent为设置跟对应文件类型相关的缩进,和ftplugin一样，是基于打开的文件来做加载的，加载时也是只加载名字对应的文件。

# `~/.vim/compiler/`
* `~/.vim/compiler`下的文件非常类似于indent文件。它们设置同类型名的当前缓冲区下的编译器相关选项。

不要担心不懂什么是"编译器相关选项"。我们等会会解释。


# `~/.vim/after/`
* `~/.vim/after`文件夹有点神奇.这个文件夹下的文件会在每次Vim启动的时候加载， 不过是在~/.vim/plugin/下的文件加载了之后
* 这允许你覆盖Vim的默认设置。实际上你将很少需要这么做，所以不用理它， 除非你有"Vim设置了选项x，但我想要不同的设置"的主意

# `~/.vim/autoload/`
* `~/.vim/autoload`文件夹就更加神奇了。事实上它的作用没有听起来那么复杂。
* 简明扼要地说：autoload是一种延迟插件代码到需要时才加载的方法。 我们将在重构插件的时候详细讲解并展示它的用法

# `~/.vim/doc/`
* `~/.vim/doc/`文件夹提供了一个你可以放置你的插件的文档的地方

# `~/.vim/spell/`
* 拼写检查脚本。

# `~/.vim/syntax/`
* 语法描述脚本