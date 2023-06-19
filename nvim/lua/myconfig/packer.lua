-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } },
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    "nvim-telescope/telescope-file-browser.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  }

  use({ 'rose-pine/neovim', as = 'rose-pine' })
  vim.cmd('colorscheme rose-pine')

  -- use { "catppuccin/nvim", as = "catppuccin" }


  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use 'nvim-treesitter/nvim-treesitter-context'
  use('nvim-treesitter/playground', { run = 'TSUpdate' })

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }



  use 'simrat39/symbols-outline.nvim'

  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
    'akinsho/flutter-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
  }


  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {                          -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' }, -- Required
    }
  }

  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
  })

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use 'jinh0/eyeliner.nvim'
  use { "NvChad/nvim-colorizer.lua", ft = { "css" } }

  use { 'j-hui/fidget.nvim', tag = 'legacy' }


  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }


  use "lewis6991/gitsigns.nvim"

  --[[ use {
  'feline-nvim/feline.nvim',
  branch = '0.5-compat' ,
  config = function ()
    require("feline").setup()
    require("feline").winbar.setup()
  end
} ]]


  -- use {
  --   'ray-x/go.nvim',
  --   config = function ()
  --     require('go').setup()
  --   end
  -- }

  use {
    "folke/trouble.nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
  }

  use { "zbirenbaum/copilot.lua" }

  use {
  "zbirenbaum/copilot-cmp",
  after = { "copilot.lua" },
  config = function ()
    require("copilot_cmp").setup()
    
  end
}
end)
