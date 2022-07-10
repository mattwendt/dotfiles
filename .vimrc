set shiftwidth=4
set tabstop=4
set expandtab
set number
set autoindent
set list listchars=tab:»·,trail:·
set hlsearch

" Keybinds

" Search highlight
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Save with STRG-S
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>

filetype plugin indent on
syntax enable

" Instal Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()

Plug 'lervag/vimtex'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-python/python-syntax'
Plug 'neovimhaskell/haskell-vim'

call plug#end()

" Python
let g:python_highlight_all = 1

" Latex
let g:vimtex_view_method = 'zathura'
let maplocalleader = ","


