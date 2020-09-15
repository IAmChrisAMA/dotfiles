set nocompatible
set wildmenu
set nowrap
filetype off

autocmd BufRead,BufNewFile *.md,*.text,*.txt,*.tex setlocal spell
set complete+=kspell
set clipboard=unnamedplus

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'gmarik/Vundle.vim'

" Python
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'vim-python/python-syntax'

" Ease of use
Plugin 'dkarter/bullets.vim'
Plugin 'tpope/vim-surround'

" Latex
Plugin 'xuhdev/vim-latex-live-preview'

"""""""""""""""""""""""""""""""""""""""""""""""""

call vundle#end()

colorscheme wal

syntax on
syntax enable
set t_Co=256
set autoindent
set smartindent
set shiftwidth=4
set expandtab
set number
set tabstop=4
let g:python_highlight_all = 1
set encoding=utf-8
set termencoding=utf-8
set showmatch
set incsearch

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

nnoremap <F5> "=strftime("%x - %X")<CR>P
inoremap <F5> <C-R>=strftime("%x - %X")<CR>
inoremap <F4> <C-R>\//==============================//<CR>
inoremap <F6> <C-R>\\begin{center}\line(1,0){250}\end{center}<CR>

autocmd FileType tex nnoremap <buffer> <C-e> :!clear && sh ~/.scripts/compile-scripts/latex.sh "%" <Enter>
autocmd FileType c nnoremap <buffer> <C-e> :!clear && sh ~/.scripts/compile-scripts/c.sh "%" <Enter>
autocmd FileType py nnoremap <buffer> <C-e> :!clear && sh ~/.scripts/compile-scripts/python.sh "%" <Enter>
autocmd FileType cpp nnoremap <buffer> <C-e> :!clear && sh ~/.scripts/compile-scripts/cpp.sh "%" <Enter>

function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
	return ""
endfunction

let g:livepreview_previewer = 'zathura'
i
