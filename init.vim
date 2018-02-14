set mouse=a " Mouse controls
set nu      " Line numbers

" Tabs
set tabstop=4     " Visual spaces per tab character
set softtabstop=4 " Amount of spaces inserted when TAB pressed
set expandtab     " Use soft tabs
set shiftwidth=4
" Aesthetic
set cursorline " Highlight current line
set wildmenu   " Autocomplete for command menu
set showmatch  " Highlight matching parentheses

" Search
set incsearch " Search as chars are typed
set hlsearch  " Highlight matches

" Code folding
set foldenable
set foldlevelstart=10
" Make space open/close folds:

call plug#begin('~/.local/share/nvim/plugged')

" Scripts

Plug 'scrooloose/nerdtree'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/c.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/ncm-clang'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'powerline/powerline'

" Colour themes

set termguicolors
Plug 'hauleth/blame.vim'
Plug 'yuttie/hydrangea-vim'

call plug#end()

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

let g:ctrlp_map = '<space>'

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

colorscheme hydrangea
