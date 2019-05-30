set t_Co=256
set backspace=2
set clipboard+=unnamed
set cursorline
set dictionary+=/usr/share/dict/words
set encoding=utf-8
set linebreak
set nobackup
set noswapfile
set nocompatible
set nowrap
set number
set scrolloff=10
set showmatch
set spellfile=$HOME/.vim/spell/en.utf-8.add
set spelllang=en_gb
set splitbelow
set ttyfast
set wildmenu
set wildmode=list:longest,full
set ww=b,s,h,l,<,>,[,]

let g:is_posix=1
let g:loaded_matchparen=1
let g:is_bash=1
let g:vimsyn_noerror=1

set pdev=Canon-MP2900-series

" set backupdir=$HOME/dotfiles/vim/backup/
" set directory=$HOME/dotfiles/vim/backup/

set autoindent

set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=80
set noexpandtab

set cindent
set cinoptions=:0,l1,t0,g0,(0

set nocursorcolumn
set nocursorline

set statusline=\%f%m%r%h%w\ ::\ %y\ [%{&ff}]\%=\ [wc:%{WordCount()}]\ ::\ [%p%%:\ %l/%c/%L]
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set laststatus=2
set cmdheight=1

set background=dark
colorscheme gruvbox

if &diff | syntax off | endif

augroup mail_trailing_whitespace " {
	autocmd!
	autocmd FileType mail setlocal formatoptions+=w
augroup END " }

if has("autocmd")
	" default to text
	autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif
	" settings for specific filetypes
	autocmd BufRead *.txt set tw=80
	autocmd FileType text setlocal spell
	autocmd BufRead,BufNewFile *.tex,*.markdown,*.md,*.txt set spell
	autocmd BufRead,BufNewFile ~/.mutt/temp/mutt-* set ft=mail wrap lbr nolist spell tw=0 wm=0
	autocmd BufRead *.markdown,*tex call DistractFree#DistractFreeToggle() | wincmd w
	" always jump to the last cursor position
	autocmd BufReadPost * if line("'\"")>0 && line("'\"")<=line("$") | exe "normal g`\""|endif
endif
