set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on     " required

" Automatically resize vim windows on resize
autocmd VimResized * :wincmd =

" Better key mappings
nmap 0 ^
nmap <C-s> :w<cr>

let mapleader = "\<Space>"
nmap <leader>vr :tabedit $MYVIMRC
nmap <leader>so :source $MYVIMRC
nmap <leader>cc \cc
nmap <leader>cu \cu

" Move code up and down with Alt + dir
" in all modes

nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '<-2<CR>gv=gv
vnoremap ˚ :m '>+1<CR>gv=gv

" Edit another file in same dir as current file
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'mxw/vim-jsx'
Plugin 'nanotech/jellybeans.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/surround.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" The Silver Searcher
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
au BufRead,BufNewFile *.am set filetype=ruby

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

" Set tag file for search order
set tags=./tags;

" Status Line settings
set laststatus=2
set showtabline=2
set guioptions-=e
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
"set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\
"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

colorscheme jellybeans
syntax on                       " Enable syntax highlighting

" Syntastic defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" Nerd Commenter settings
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters
let g:NERDCompactSexyComs = 1 " User compact syntax for prettified multi-line-comments
let g:NERDDefaultAlign = 'left' " Align line-wise comments flush left instead of code indentation
let g:NERDTrimTrailingWhitespace = 1 "Trim whitespace when uncommenting

" Get Rust syntax highlighting to work
" filetype on
