set nocompatible
set hlsearch
set incsearch
execute pathogen#infect()
syntax enable
syntax on
filetype plugin on
filetype plugin indent on
set number
set splitright
set backspace=2
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1

" color-solarized
set background=dark
colorscheme solarized

" ctrlp
let g:ctrlp_dont_split='netrw'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" airline
set laststatus=2

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_sign=1
let g:syntastic_javascript_checkers = ['eslint']

" javascript
let javascript_enable_domhtmlcss=1

" jsx
let g:jsx_ext_required = 0

" emmet
let g:user_emmet_mode='a'
