let g:tex_flavor='latex'
set shellslash
let g:Tex_ViewRule_pdf='Preview'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf'
set grepprg=grep\ -nH\ $*

" colorscheme setting
colorscheme jellybeans
let g:jellybeans_use_lowcolor_black=0

set sw=4 sts=4 et
" set tabstop=4
" set shiftwidth=4
" set spell
set number
set ruler

" for general
set smartindent
set autoindent
filetype plugin indent on
syntax on

" set autochdir
set backspace=indent,eol,start
set backup
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/tmp
set noerrorbells

" for text formatting/layout
" :set tw=100

" for pathogen plugin
call pathogen#infect()
call pathogen#helptags()

" set startup directory
cd $HOME/Projects

" set font size to 12
set guifont=Monaco:h12

" pig syntax
augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END

let g:neocomplcache_enable_at_startup=0

" for rgrep
" set grepprg=grep\ -nrI\ --exclude-dir=target\ --exclude-dir=tmp\ --exclude-dir=log\ --exclude="*.min.js"\ --exclude="*.log"\ $*\ /dev/null

" for fuzzy_finder_textmate
"map <leader>t :FuzzyFinderTextMate<CR>
"let g:fuzzy_roots='$HOME/Projects'
"let g:fuzzy_ceiling=1000
"let g:fuzzy_ignore=''
"let g:fuzzy_matching_limit=200

" for clojure
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
" this should only be necessary if you don't have the ng client in your PATH
" let vimclojure#NailgunClient = "/path/to/your/ng"
let vimclojure#WantNailgun = 1

" for ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

""" KEY MAPPING
" move curse among spited windows
nmap <silent> <A-C-Up> :wincmd k<CR>
nmap <silent> <A-C-Down> :wincmd j<CR>
nmap <silent> <A-C-Left> :wincmd h<CR>
nmap <silent> <A-C-Right> :wincmd l<CR>

nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>
nmap j gj
nmap k gk
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
map! ii <Esc>

""" for Ctrl-P
nmap ; :CtrlPBuffer<CR>
nmap <C-f> :CtrlP 
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

""" for NERDTree
nmap \n :NERDTreeToggle<CR>
