set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on     " required

" automatically resize vim windows on resize
autocmd VimResized * :wincmd =

" Better key mappings
nmap 0 ^
nmap <C-s> :w<cr>

let mapleader = "\<Space>"
nmap <leader>vr :sp $MYVIMRC
nmap <leader>so :source $MYVIMRC
nmap <leader>cc \cc
nmap <leader>cu \cu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/surround.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" The Silver Searcher
" "============================================
 if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'


  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Ruby Settings "
au BufRead,BufNewFile Gemfile set filetype=ruby

" Rust Settings "
au BufNewFile,BufRead *.rs set filetype=rust

" Editor Settings
" ==============================================
set t_Co=256
set scrolloff=4                 " Keep at least 4 lines below cursor
set rnu                         " Relative like numbers
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set backspace=indent,eol,start  " Default backspacing behavior

" Status Line settings
set laststatus=2
set showtabline=2
set guioptions-=e
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
"set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\
"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P


" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

colorscheme jellybeans
syntax on                       " Enable syntax highlighting


" Get Rust syntax highlighting to work
" filetype on
