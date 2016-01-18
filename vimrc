" Vim configuration file "

syntax enable
"set mouse=a	"enable mouse of All modes

" Pathogen plugin management
call pathogen#infect()

set backspace=indent,eol,start

" Visuals
set number	"line numbers
"set cursorline	"hl cursor line
set showmatch 	"match commands

"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
set t_Co=256
set background=dark
colorscheme vividchalk

set incsearch	"seach as you type
set hlsearch 	"hilight search
set ignorecase	"ingorecase
set smartcase	"don't ignore first capital letter

"Filetype functions
filetype plugin on
filetype plugin indent on "filetype based indent


" move vertically by visual line
nnoremap j gj
nnoremap k gk


"Saving
nnoremap <C-s> :w<cr>
inoremap <C-s> <esc>:w<cr>a
