:map <F4> :w<cr>
map <F10> :!sh /home/julian/Scripts/MakeForMbed.sh '%:p:h' '%:p:h:t'<CR>
:map <F5> :set paste<cr>
:map <F3> :bnext<cr>
:inoremap <F2> <Esc>:
:map <F6> :set nopaste<cr>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256


execute pathogen#infect()
call pathogen#helptags()


filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on

" Don't show seperators
let g:airline_left_sep=''
let g:airline_right_sep=''

let g:airline_theme='sol'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Fjerner delay, fra Esc
set timeoutlen=1000 ttimeoutlen=0
set relativenumber
set number
set tabstop=2
