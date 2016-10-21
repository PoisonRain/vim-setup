execute pathogen#infect()

syntax on

let mapleader = " "
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set backspace=2

nnoremap <C-e> :w<CR> :exec '!python3' shellescape(@%, 1)<cr>
nnoremap <C-l> :set invnumber<cr>
nnoremap <C-i> :set invrightleft<cr>
nnoremap <C-o> :set invlist<cr>:set listchars=tab:>-<cr>:set listchars=space:·<cr>
nnoremap <C-_> :2winc -<cr>
nnoremap <C-=> :2winc +<cr>
nnoremap <C-q> :close<cr>

vnoremap <C-c> :w !xclip -i -sel c<cr><cr>

imap jj <Esc>j
imap kk <Esc>k
imap jkl <Esc>ll
imap hh <Esc>h

cmap w!! w !sudo tee > /dev/null %

set mouse=a
set ttymouse=xterm2

filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
