if &compatible
  set nocompatible
endif

" source $HOME/.config/nvim/plugins.vim
packadd packer.nvim
lua require('plugins')

source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/plugins/auto-pairs.vim
source $HOME/.config/nvim/plugins/vimtex.vim

filetype plugin indent on
syntax enable

"set default split open position
set splitbelow
set splitright

"enable syntax
syntax on

"default tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set expandtab

"highlight 100th column
set colorcolumn=100
"highlight ColorColumn ctermbg=darkgray

"show line numbers
set number

"safe file confirm dialogue
set confirm

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=2

set encoding=utf-8

" Always display the status line, even if only one window is displayed
set laststatus=2

set showtabline=2 " always show tab bar

"Set highlight searches
set hlsearch

"Set incremental highlight
set incsearch

" enable filtype detection
filetype on
filetype plugin on
filetype indent on

" makefiles
autocmd FileType make set noexpandtab shiftwidth=7 softtabstop=0

set showcmd

hi Comment cterm=italic
let g:onedark_config = {
  \ 'style': 'deep',
\}
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

syntax on
colorscheme nord
" set background=light
" highlight Normal ctermbg=black

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    " set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'

" map .tpp to cpp filetype
autocmd BufEnter *.tpp :setlocal filetype=cpp

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Autoformat black on save
augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end
