""""""""""""""""""""""""""""""
"" base
""""""""""""""""""""""""""""""

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

""""""""""""""""""""""""""""""
"" files, backups and undo
""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in source control
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""
"" mouse
""""""""""""""""""""""""""""""

set mouse=a
set ttym=xterm2

""""""""""""""""""""""""""""""
"" keyboard
""""""""""""""""""""""""""""""

" <Ctrl-C> -- copy selected to system clipboard (see: http://vim.wikia.com/wiki/Quick_yank_and_paste)
vmap <C-C> "*y

" <Ctrl-A> -- visually select all and copy to system clipboard
map <C-A> ggvG$"*y<C-o><C-o>

" ,cp copies path to clipboard
nmap <leader>cp :let @" = expand("%:p")<cr><cr>

"""""""""""""""""""""""""""""""
"" formatting
""""""""""""""""""""""""""""""

" do not wrap
set nowrap
set textwidth=0 
set wrapmargin=0


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
map <C-n> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" color-solarized
""""""""""""""""""""""""""""""
"" colors and Fonts
""""""""""""""""""""""""""""""
" Enable syntax highlighting
 syntax enable

colorscheme solarized
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" set t_Co=256
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


""""""""""""""""""""""""""""""
"" splits / windows
""""""""""""""""""""""""""""""

" instead of ctrl-w then one of {j,k,h,l}, just ctrl-{j,k,h,l}:
" http://robots.thoughtbot.com/post/48275867281/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>




















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

" auto pairs
let g:AutoPairsFlyMode = 1
