if has("gui_running")
	set columns=140
	set lines=40
endif

color pablo
syn on
set ts=4
set sw=4
set cin
set ic
set hls
set sm
set smartcase

set path=$HOME/workspace/lj_fun/**

set tags+=$HOME/workspace/lj_fun/tags

setlocal omnifunc=syntaxcomplete#Complete

set wildignore+=*.o
set wildignore+=*.a
set wildignore+=*.d
set wildignore+=*.dir
set wildignore+=*_debug
set wildignore+=*_release
set wildignore+=*_gold
set wildignore+=*/Build/*
set wildmenu

setlocal spell spelllang=en_gb
set spell

nmap <C-TAB> gt
nmap <C-S-TAB> gT

" fix up the tag function to show the full list instead of the first match
map <C-]> :tjump <C-R>=expand("<cword>")<CR><CR>
" fix all uses of ta->tj as the new ta is fixed and want it to call tj instead
cabbrev ta tj

set nocp
filetype plugin on

let g:LookupFile_DefaultCmd = ':LUPath'

nmap <A-`> :A<CR>

cd ~/workspace/lj_fun

