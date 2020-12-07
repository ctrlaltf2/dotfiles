" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim')

    call dein#add('joshdick/onedark.vim')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')

    " General text editing
    call dein#add('tpope/vim-sleuth')
    call dein#add('bronson/vim-trailing-whitespace')
    call dein#add('junegunn/fzf.vim')
    call dein#add('ryanoasis/vim-devicons')
    call dein#add('jiangmiao/auto-pairs')

    " General programming
    call dein#add('sheerun/vim-polyglot', {'rev': 'v4.16.0'})
    call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
    call dein#add('kevinhwang91/rnvimr', {'do': 'make sync'})
    " call dein#add('DanilaMihailov/beacon.nvim', {'rev': '065d7fa'})

    " Language-specific improvement
    call dein#add('rust-lang/rust.vim')
    " call dein#add('alvan/vim-closetag') " HTML tag closing
    " call dein#add('gko/vim-coloresque') " Highlight color codes in HTML-related files
    call dein#add('lilydjwg/colorizer')

    " LaTex
    call dein#add('lervag/vimtex')

    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    call dein#end()
    call dein#save_state()
endif
