set t_Co=256
set backspace=2
set clipboard+=unnamed
set cursorline
set dictionary+=/usr/share/dict/words
set directory=~/.vim/swap
set encoding=utf-8
set linebreak
set nobackup
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

set backupdir=$HOME/dotfiles/vim/backup/
set directory=$HOME/dotfiles/vim/backup/

set autoindent

set tabstop=8
set shiftwidth=8
set softtabstop=8
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

colorscheme onedark

if &diff | syntax off | endif

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

let g:distractfree_width = '75%'
let g:distractfree_keep_options = 'textwidth=80'

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
let g:fzf_files_options = '--preview "rougify {} | head -'.&lines.'"'

let g:fzf_history_dir = '~/.fzf/fzf-history'

let g:completor_clang_binary = '/usr/bin/clang'

let g:validator_clang_tidy_binary = '/usr/bin/clang-tidy'
let g:validator_c_checkers = ['clang-tidy']
let g:validator_error_msg_format = "[ ● %d/%d issues ]"
let g:validator_auto_open_quickfix = 1

let g:gitgutter_sign_added = '•'
let g:gitgutter_sign_removed = '•'

let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:EditorConfig_exec_path = '/usr/bin/editorconfig'

