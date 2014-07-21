set nocp
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"

Plugin 'SuperTab'

Plugin 'The-NERD-tree'

Plugin 'Auto-Pairs'

Plugin 'taglist.vim'

call vundle#end()

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

syntax on"打开高亮
if has("autocmd")
    filetype plugin indent on "根据文件进行缩进
    augroup vimrcEx
        au!
        autocmd FileType text setlocal textwidth=78
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \ exe "normal! g`\"" |
                    \ endif
    augroup END
else
    "智能缩进，相应的有cindent，官方说autoindent可以支持各种文件的缩进，但是效果会比只支持C/C++的cindent效果会差一点，但笔者并没有看出来
    set autoindent " always set autoindenting on
endif " has("autocmd")
set number "shwo line number
set autoindent
set smartindent
set shiftwidth=4 "设置当行之间交错时，使用四个空格
set tabstop=4 "让一个tab等于4个空格
set expandtab
set softtabstop=4
set wrap "自动换行
set hlsearch "高亮显示结果
set incsearch "在输入要搜索的文字时，vim会实时匹配
set backspace=indent,eol,start whichwrap+=<,>,[,] "允许退格键的使用
set tags=tags
set autochdir
set nobackup
set ruler "在右下角显示标尺
set scrolloff=5
set guifont=Monaco:h16
set fileencodings=utf-8,gb18030id
" set transparency=8    "设置窗口透明度
colorscheme darkburn
set t_Co=256
