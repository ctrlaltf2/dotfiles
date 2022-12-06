" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim')

    " Colors
    "" Standard onedark
    " call dein#add('joshdick/onedark.vim')
    "" Tree-sitter supported onedark
    # call dein#add('navarasu/onedark.nvim', {'rev': 'fdfe7bfff486acd102aae7fb2ff52e7e5f6c2bad'})
    call dein#add('shaunsingh/nord.nvim')
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
    call dein#add('nvim-treesitter/nvim-treesitter') " , {'hook_done_update': ':TSUpdate'})
    call dein#add('github/copilot')

    " Language-specific improvement
    call dein#add('rust-lang/rust.vim')
    call dein#add('simrat39/rust-tools.nvim')
    call dein#add('norcalli/nvim-colorizer.lua')

    " LaTex
    call dein#add('lervag/vimtex')

    " Vimwiki
    " call dein#add('vimwiki/vimwiki')

    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    call dein#end()
    call dein#save_state()
endif
