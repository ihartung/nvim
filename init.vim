" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=0	" Line wrap (number of cols)
set wrap
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set shiftwidth=8	" Number of auto-indent spaces
"set smartindent	" Enable smart-indent
"set smarttab	" Enable smart-tabs
set softtabstop=0	" Number of spaces per Tab
 
"" Advanced
set ruler	" Show row and column ruler information
set list
set lcs=tab:>-,eol:<,trail:-
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

set clipboard=unnamedplus

call plug#begin('~/.vim/plugged')
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'wolfgangmehner/bash-support'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'neoclide/vim-jsx-improve'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Fix highlighting for large js(s)/ts(x) files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
