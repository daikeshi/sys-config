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

" for general
set smartindent
set autoindent
filetype plugin indent on
syntax on

" set autochdir
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set noerrorbells

" for text formatting/layout
" :set tw=100

" for pathogen plugin
call pathogen#infect()
call pathogen#helptags()

" set startup directory
cd ~/Projects/

" set font size to 12
set guifont=Monaco:h12

" pig syntax
augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END

" move curse among spited windows
nmap <silent> <A-C-Up> :wincmd k<CR>
nmap <silent> <A-C-Down> :wincmd j<CR>
nmap <silent> <A-C-Left> :wincmd h<CR>
nmap <silent> <A-C-Right> :wincmd l<CR>

let g:neocomplcache_enable_at_startup=1

" for rgrep
" set grepprg=grep\ -nrI\ --exclude-dir=target\ --exclude-dir=tmp\ --exclude-dir=log\ --exclude="*.min.js"\ --exclude="*.log"\ $*\ /dev/null

" for fuzzy_finder_textmate
"map <leader>t :FuzzyFinderTextMate<CR>
"let g:fuzzy_roots='~/Projects'
"let g:fuzzy_ceiling=1000
"let g:fuzzy_ignore=''
"let g:fuzzy_matching_limit=200
