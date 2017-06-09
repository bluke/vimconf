" Vim configuration file "

syntax enable
"set mouse=a	"enable mouse of All modes

" Pathogen plugin management
call pathogen#infect()

set backspace=indent,eol,start

" Visuals
set number	"line numbers
set cursorline	"hl cursor line
set showmatch 	"match commands

"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
set t_Co=256
set background=dark
colorscheme landscape

set incsearch	"seach as you type
set hlsearch 	"hilight search
set ignorecase	"ingorecase
set smartcase	"don't ignore first capital letter

"Filetype functions
filetype on            " enables filetype detection
filetype plugin on	" enables filetype specific plugins
filetype plugin indent on "filetype based indent

"Syntastic based options
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

"Vim lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ }

"Neocomplete 
let g:neocomplete#enable_at_startup = 1

"Vim-Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"

" move vertically by visual line
"nnoremap j gj
"nnoremap k gk

"autocomplete
inoremap <C-@> <C-n>

"Saving
nnoremap <F5> :w<cr>
inoremap <F5> <esc>:w<cr>a

nnoremap <F7> :setlocal spell! spelllang=en<CR>
nnoremap <F8> :setlocal spell! spelllang=fr<CR>

inoremap <F7> <esc>:setlocal spell! spelllang=en<CR>a
inoremap <F8> <esc>:setlocal spell! spelllang=fr<CR>a


