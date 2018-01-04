set nocompatible "be iMproved, required
filetype off " required

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

call plug#begin('~/.nvim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-git', { 'for': 'git' }

"All of your Plugins must be added before the following line
call plug#end()
filetype plugin indent on    " requiredbefore the following line

set background=dark
set number
