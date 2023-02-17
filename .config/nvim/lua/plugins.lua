-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
--
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.api.nvim_command('packadd packer.nvim')
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Colors
  use {
    'shaunsingh/nord.nvim',
    commit = '78f5f001709b5b321a35dcdc44549ef93185e024'
  }

  -- Cool colors but currently broken in new neovim :(
  -- use {
  --   'sainnhe/everforest'
  -- }

  -- General text editing
  use 'tpope/vim-sleuth'
  use 'bronson/vim-trailing-whitespace'
  use 'ibhagwan/fzf-lua'
  use 'jiangmiao/auto-pairs'

  -- General programming
  use 'sheerun/vim-polyglot'
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }


  use 'beauwilliams/statusline.lua'

  -- use 'github/copilot'

  -- language-specific
  --- rust
  use 'rust-lang/rust.vim'
  use 'simrat39/rust-tools.nvim'

  --- html/css/js
  use 'norcalli/nvim-colorizer.lua'

  --- python
  use {
    'psf/black',
    branch = 'stable'
  }

  -- LaTex
  use 'lervag/vimtex'

  -- You can specify multiple plugins in a single call
  -- use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

  -- You can alias plugin names
  -- use {'dracula/vim', as = 'dracula'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
