-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.startup(function()
  use("wbthomason/packer.nvim")
  use("glepnir/dashboard-nvim")

  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      vim.cmd([[TSUpdate]])
    end,
  })
  use("nvim-lua/plenary.nvim")

  -- LSP
  use("neovim/nvim-lspconfig") -- enable LSP
  use("williamboman/nvim-lsp-installer") -- simple to use language server installer
  use("tamago324/nlsp-settings.nvim") -- language server settings defined in json for
  use("jose-elias-alvarez/null-ls.nvim")

  -- Themes
  -- use("folke/tokyonight.nvim")
  use("EdenEast/nightfox.nvim")

  -- completion plugins
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/cmp-nvim-lsp")

  use("L3MON4D3/LuaSnip")
  use("rafamadriz/friendly-snippets")
  use("saadparwaiz1/cmp_luasnip")

  use("folke/which-key.nvim")
  use("numToStr/Comment.nvim")
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("windwp/nvim-autopairs")
  use("lewis6991/gitsigns.nvim")

  use("kyazdani42/nvim-web-devicons")
  use("nvim-telescope/telescope.nvim")
  use("kyazdani42/nvim-tree.lua")
  use("nvim-lualine/lualine.nvim")

  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup({})
    end,
  })
end)
