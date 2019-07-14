" Vim version 8.1
" Included patches: 1-22
" Huge version with GTK3 GUI
"
" Plugin list:
" pathogen
" clang_format
" comfortable_motion
" operator
" gruvbox
" rust.vim
" vim-airline-themes
" vim-trailing-whitespace
" papercolor-theme
" vim-airline
" vim-polyglot
" seoul256


"pathogen
execute pathogen#infect()


"set default split open position
set splitbelow
set splitright

"vv split vertical
nnoremap <silent> vv <C-w>v

"ff split horizontal
nnoremap <silent> ff <C-w>s

"\xx close window
nnoremap <Leader>xx <C-w>c

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
highlight ColorColumn ctermbg=darkgray

"Autocomplete braces when hitting enter
inoremap {<CR> {<CR>}<Esc>ko

"autocomplete various other things
"inoremap ' ''<Esc>i

"set mouse cursor click
set mouse=a

"show line numbers
set number

"colorscheme
set background=dark
colorscheme gruvbox

"remove opaque background color for gruvbox
"hi Normal ctermbg=none


"safe file confirm dialogue
set confirm

" Make the mouse usable on large screens
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" set 256 colors
set t_Co=256

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=2

set encoding=utf-8

" Always display the status line, even if only one window is displayed
set laststatus=2

set relativenumber

set showtabline=2 " always show tab bar

"Powerline
let g:airline_powerline_fonts = 1

let g:airline_theme='gruvbox'

"Set highlight searches
set hlsearch

"Set incremental highlight
set incsearch

" enable filtype detection
filetype on
filetype plugin on
filetype indent on

" makefiles
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" tab navigation
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

:inoremap <C-v> <ESC>"+pa
:vnoremap <C-c> "+y
:vnoremap <C-d> "+d

let g:rustfmt_autosave = 1

" clang-format auto format
let g:clang_format#auto_format = 1

set showcmd

" ALE workarounds until a patch is sent

" These settings assume working from project base with includes
" being in currentDir/include
let include_dir = '/' . join(split(expand('%:p'), '/')[0:-3], '/') . '/include'

let g:ale_cpp_gcc_options = '-std=c++14 -Wall -I' . include_dir
let g:ale_cpp_clang_options = '-std=c++14 -Wall -I' . include_dir
let g:ale_cpp_clangcheck_options = '-- -I -std=c++14' . include_dir
let g:ale_cpp_clangtidy_options = '-- -std=c++14'

let g:clang_format#style_options = {
            \ "ColumnLimit" : 100}

" Break some habits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
