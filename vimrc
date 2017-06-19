" Vim configuration file "
let mapleader=","
let maplocalleader=";"
" Pathogen {{{
call pathogen#infect()
" }}}
" Appearance {{{
set t_Co=256
set background=dark
colorscheme landscape
set noshowmode
set number	"line numbers
set cursorline	"hl cursor line
set showmatch 	"match parentises
" }}}
" Behaviour {{{
set hidden
set backspace=indent,eol,start
set incsearch	"seach as you type
set hlsearch 	"hilight search
set ignorecase	"ingorecase
set smartcase	"don't ignore first capital letter
"set mouse=a	"enable mouse of All modes
""" }}}
" Commands {{{
cmap w!! w !sudo tee % >/dev/null
" }}}
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
" Plugins {{{
" CtrlP {{{
let g:ctrlp_cmd = 'CtrlPMixed'
" }}}
" Lightline {{{
set laststatus=2
let g:lightline = {
      \ 'colorscheme' : 'landscape',
      \ 'active': {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'readonly', 'gitbranch', 'filename', 'modified' ] ],
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'spell', 'fileformat', 'fileencoding', 'filetype' ] ] },
      \ 'component': {
      \ 'fileformat': '%{&ff!="unix"?&ff:""}',},
      \ 'component_visible_condition' : {
      \ 'fileformat' : '&ff!="unix"',},
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'},
      \ }
" }}}
" Neocomplete {{{
let g:neocomplete#enable_at_startup = 1
" }}}
" Syntastic {{{
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

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
" vimtex {{{
let g:vimtex_compiler_latexmk = {'callback' : 0}
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_manual = 1
" }}}
" }}}
" Shortcuts {{{
" Insert mode {{{
inoremap jk <ESC>
inoremap <leader>f <ESC>za
inoremap <leader>w <ESC>:w<CR>a
" autocomplete {{{
inoremap <C-@> <C-x><C-o>
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
" }}}
" FKeys {{{
inoremap <F5> <esc>:w<cr>a
inoremap <F7> <esc>:setlocal spell! spelllang=en<CR>a
inoremap <F8> <esc>:setlocal spell! spelllang=fr<CR>a

" }}}
" }}}
" leader{{{
nnoremap <leader>h :let @/=""<CR>
nnoremap <leader>f za
" Saving
nnoremap <leader>w :w<cr>
" }}}
" Fkeys {{{
" Paste toggle
set pastetoggle =<F2>
" Saving
nnoremap <F5> :w<cr>
" Spell
nnoremap <F7> :setlocal spell! spelllang=en<CR>
nnoremap <F8> :setlocal spell! spelllang=fr<CR>
" }}}
" Buffers {{{
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
" AUColors {{{
augroup Cursorline
	autocmd!
	au VimEnter * :highlight CursorLine term=bold cterm=bold ctermbg=NONE
	au ColorScheme * :highlight CursorLine term=bold cterm=bold ctermbg=NONE
augroup end
" }}}
" vim:foldmethod=marker:foldlevel=0
