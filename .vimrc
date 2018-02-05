" Initial required setup for Tmux and Vundle.
set nocompatible
filetype off

" Set up for Vundle.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

" Add plugins.
Plugin 'christoomey/vim-tmux-navigator'

" Add syntax highlighting and change color scheme.
syntax on
colo monokai

" By default, the indent is 4 spaces.
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Set ruler.
set colorcolumn=81 

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode.
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" File stuff.

" For scala/html/rb files, 2 spaces.
autocmd Filetype scala setlocal ts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype sh setlocal ts=2 sw=2 expandtab

augroup PythonCustomization
  " Highlight python self, when followed by a comma, a period or a parent.
  :autocmd FileType python syn match pythonStatement "\(\W\|^\)\@<=self\([\.,)]\)\@="
  :autocmd FileType python syn match pythonStatement "\(.\)\@<=items"
augroup END

