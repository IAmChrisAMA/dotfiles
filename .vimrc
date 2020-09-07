set nocompatible
set wildmenu
filetype off

autocmd BufRead,BufNewFile *.md,*.text,*.txt setlocal spell
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

function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
	return ""
endfunction

autocmd FileType tex nnoremap <buffer> <C-c> :LLPStartPreview <Enter>

let g:livepreview_previewer = 'zathura'
