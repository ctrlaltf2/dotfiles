" Habit breaking
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set mouse=

" Native clipboard
:inoremap <C-v> <ESC>"+pa
:vnoremap <C-c> "+y
:vnoremap <C-x> "+d

" space key leader
let mapleader=" "
nnoremap <Space> <Nop>

" Don't exit visual mode when indenting
vnoremap > >gv
vnoremap < <gv

" Tab completion
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
