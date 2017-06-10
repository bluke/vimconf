" Vim configuration file "
" Pathogen {{{
call pathogen#infect()
" }}}
" Appeearance {{{
set t_Co=256
set background=dark
colorscheme landscape
set number	"line numbers
set cursorline	"hl cursor line
set showmatch 	"match parentises
" }}}
" Behaviour {{{
set hidden
let mapleader=","
set backspace=indent,eol,start
set incsearch	"seach as you type
set hlsearch 	"hilight search
set ignorecase	"ingorecase
set smartcase	"don't ignore first capital letter
"set mouse=a	"enable mouse of All modes
""" }}}
" File Reactive {{{
syntax enable
set modelines=1
"Filetype functions
filetype on            " enables filetype detection
filetype plugin on	" enables filetype specific plugins
filetype plugin indent on "filetype based indent
" }}}
" Folds {{{
set foldenable
set foldlevelstart=99
set foldnestmax=5
" }}}
" Syntastic {{{
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
" }}}
" Lightline {{{
set laststatus=2
let g:lightline = {
      \ 'colorscheme' : 'landscape',
      \ 'active': {
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'spell', 'fileformat', 'fileencoding', 'filetype' ] ] },
      \ 'component': {
      \ 'fileformat': '%{&ff!="unix"?&ff:""}',},
      \ 'component_visible_condition' : {
      \ 'fileformat' : '&ff!="unix"',},
      \ }
" }}}
" Neocomplete {{{
let g:neocomplete#enable_at_startup = 1
" }}}
" Vim-Go {{{
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"
" }}}
" CtrlP {{{
let g:ctrlp_cmd = 'CtrlPBuffer'
" }}}
" Shortcuts {{{
" Insert mode {{{
inoremap jk <ESC>
inoremap <leader>f <ESC>za
" }}}
" autocomplete {{{
inoremap <C-@> <C-n>
" }}}
" leader{{{
nnoremap <leader>f za
" Saving
nnoremap <leader>s :w<cr>
inoremap <leader>s <esc>:w<cr>a
" }}}
" Fkeys {{{
" Paste toggle
set pastetoggle =<F2>
" Saving
nnoremap <F5> :w<cr>
inoremap <F5> <esc>:w<cr>a
" Spell
nnoremap <F7> :setlocal spell! spelllang=en<CR>
nnoremap <F8> :setlocal spell! spelllang=fr<CR>
inoremap <F7> <esc>:setlocal spell! spelllang=en<CR>a
inoremap <F8> <esc>:setlocal spell! spelllang=fr<CR>a
" }}}
" Buffers {{{
inoremap <leader>bs <ESC>:split<CR>a
inoremap <leader>bv <ESC>:vsplit<CR>a
inoremap <leader>bn <ESC>:bn<CR>a
inoremap <leader>bb <ESC>:bp<CR>a
inoremap <C-h> <ESC><C-w>ha
inoremap <C-j> <ESC><C-w>ja
inoremap <C-k> <ESC><C-w>ka
inoremap <C-l> <ESC><C-w>la
nnoremap <leader>bs :split<CR>
nnoremap <leader>bv :vsplit<cR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bb :bp<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" }}}
" }}}
" vim:foldmethod=marker:foldlevel=0
