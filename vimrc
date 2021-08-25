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
let g:ctrlp_cmd = 'CtrlPBuffer'
" }}}
" Lightline {{{
set laststatus=2
let g:lightline = {
	\ 'colorscheme' : 'landscape',
	\ 'active': {
	\ 	'left': [ [ 'mode', 'paste' ],
	\ 		[ 'readonly', 'gitbranch', 'filename', 'modified' ] ],
	\ 	'right': [ [ 'lineinfo' ],
	\ 		[ 'percent' ],
	\ 		[ 'spell', 'fileformat', 'fileencoding', 'filetype' ] ] },
	\ 'component': {
	\ 	'fileformat': '%{&ff!="unix"?&ff:""}',
	\ 	'fileencoding': '%{&fenc!=#"utf-8"?&fenc!=#""?&fenc:&enc:""}',},
	\ 'component_visible_condition' : {
	\ 	'fileformat' : '&ff!=#"unix"',
	\ 	'fileencoding' : '&fenc!=#"utf-8"',},
	\ 'component_function': {
	\ 	'gitbranch': 'fugitive#head'},
	\ }
" }}}
" MuComplete {{{
set completeopt+=menuone
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
"inoremap <expr> <c-e> mucomplete#popup_exit("\<c-e>")
"inoremap <expr> <c-y> mucomplete#popup_exit("\<c-y>")
"inoremap <expr> <cr> mucomplete#popup_exit("\<cr>")
"inoremap <expr> <c-@> mucomplete#popup_exit("\<cr>")
"set completeopt+=noselect
set completeopt+=noinsert
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#cycle_with_trigger = 1
inoremap <c-n> <plug>(MUcompleteFwd)
inoremap <c-b> <plug>(MUcompleteBwd)
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
inoremap <leader><leader> <c-o>
inoremap <leader>f <c-o>za
inoremap <leader>w <c-o>:w<CR>
" Buffers {{{
inoremap <leader>bs <c-o>:split<CR>
inoremap <leader>bv <c-o>:vsplit<CR>
inoremap <leader>bn <c-o>:bn<CR>
inoremap <leader>bb <c-o>:bp<CR>
" }}}
" FKeys {{{
inoremap <F5> <c-o><F5>
inoremap <F7> <c-o><F7>
inoremap <F8> <c-o><F8>
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
