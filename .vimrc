" rails.vim (1567)
" the NERD tree (1658)
" snipMate (2540)
" L9 (3252)
" FuzzyFinder (1984)
" Color Sampler Pack (625)
" minibufexpl (159)
" superTab (1643)
" haml (https://github.com/tpope/vim-haml)
" coffee script (3590)
" slim (https://github.com/bbommarito/vim-slim.git)
" rspec
" autoclose (1849)
" vim-bundler (https://github.com/tpope/vim-bundler.git)
" vim-ruby (https://github.com/vim-ruby/vim-ruby.git)
" cucumber (2973)
" scss https://github.com/cakebaker/scss-syntax.vim
" c++11 http://www.vim.org/scripts/script.php?script_id=3797

" 不兼容vi键盘，使用vim键盘
set nocompatible

" 启动vim时窗口的大小
set lines=45 columns=100

" syntax highlight 
syntax on

" detect file type
filetype plugin indent on

" 禁止生成临时文件
" set nobackup
" set noswapfile

" highlight tabs and trailing spaces
set listchars=tab:>-,trail:-
set list

" 代码折叠
" set foldmethod=indent
set foldmethod=manual

" 历史记录数
set history=50

" 设置编码
set enc=utf-8

" 设置文件编码
set fenc=utf-8

" 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,g18030,gbk,gb2312,cp936

" 显示行号
set number

" 高亮显示匹配的括号
set showmatch

" 搜索忽略大小写
set ignorecase

" 查找结果高亮显示
set hlsearch
set incsearch

" tab宽度
set tabstop=2
set cindent shiftwidth=2
set autoindent shiftwidth=2
" convert tab to space
set expandtab

" 命令行下按tab键自动完成
set wildmode=list:full
set wildmenu

" 设置默认的颜色
colorscheme desertEx

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 通过使用:commands命令, 告诉我们文件的哪一行被改变过
set report=0

" miniBufExpl
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrors=1
let g:miniBufExplModSelTarget=1
let g:miniBufExplCTabSwitchBufs=1

" 把F8映射到 启动NERDTree插件
let NERDTreeShowBookmarks=1
let NERDChristmasTree=1
let NERDTreeWinPos="left"
map <F8> :NERDTreeToggle<CR>

" 设置FuzzyFinder
let mapleader = "\\"
map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>g :FufTag<CR>
map <leader>b :FufBuffer<CR>

" 设置Color-Sample
map <silent><F3> :NEXTCOLOR<cr>
map <silent><F2> :PREVCOLOR<cr>

" 设置Rubytest
" let g:rubytest_cmd_spec="rspec -fd %p"

" 设置SuperTab
let g:SuperTabRetainCompletionType="context"

" 设置显示的文件当执行 :Rails
let g:rails_default_file='Gemfile'

" 设置git
" from http://lazyhack.net/using-git-with-vim-2/
set laststatus=2
set statusline="%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ %=[%{GitBranch()}]"

" SCSS syntax
au BufRead,BufNewFile *.scss set filetype=scss

" 保存时自动删除.rb文件每行末尾的空白符
" http://vim.wikia.com/wiki/Remove_unwanted_spaces
" 有点危险
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e

" highlight for c++11
au BufNewFile,BufRead *.cpp set syntax=cpp11
