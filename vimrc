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
filetype on            " enables filetype detection
filetype plugin on	" enables filetype specific plugins
filetype plugin indent on "filetype based indent

"Syntastic based options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" move vertically by visual line
nnoremap j gj
nnoremap k gk


"Saving
nnoremap <F3> :w<cr>
inoremap <F3> <esc>:w<cr>a
