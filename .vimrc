execute pathogen#infect()
set term=xterm-256color
filetype plugin indent on
syntax on

let g:airline_theme='dracula'
set guifont=Liberation\ Mono\ for\ Powerline\ 10 
if !exists('g:airline_symbols')
	  let g:airline_symbols = {}
  endif

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_powerline_fonts=1 


"set nocompatible

"set exrc
"set secure

set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set laststatus=2
"set noexpandtab
set colorcolumn=110
"highlight ColorColumn ctermbg=darkgray

"set ignorecase

"inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
"autocmd FileType html,php inoremap ;i <em></em> <Space><++><Esc>FeT>i
"autocmd FileType html,php inoremap ;s <strong></strong> <Space><++><Esc>FsT>i

map <C-n> :NERDTreeToggle<CR>


