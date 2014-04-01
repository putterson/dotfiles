set nocompatible ruler laststatus=2 showcmd showmode number
nnoremap <CR> :noh<CR><CR>
set nu
set autoindent
set autochdir
set tabstop=4

filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)

filetype plugin indent on

syntax enable
set background=dark
if has('gui_running')
	colorscheme elflord
else
	colorscheme delek
endif
