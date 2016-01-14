" Vim configuration file "

syntax enable

set mouse=a	"enable mouse of All modes

" Visuals
set number	"line numbers
set cursorline	"hl cursor line
set showmatch 	"match commands


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


" Pathogen plugin management
"call pathogen#infect()

"Saving
nnoremap <C-s> :w<cr>
inoremap <C-s> <esc>:w<cr>a
