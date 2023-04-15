-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

return require('packer').startup(function()
    use("wbthomason/packer.nvim")

    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope.nvim")

    -- LSP
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'

    -- Completion framework:
    use 'hrsh7th/nvim-cmp'

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'

    -- Themes
    use("EdenEast/nightfox.nvim")

    -- Keymap Helper
    use("folke/which-key.nvim")

    -- Git Helper
    use("lewis6991/gitsigns.nvim")

    -- Sidebar Finder
    use("kyazdani42/nvim-tree.lua")

    -- Bottom Bar Helper
    use("nvim-lualine/lualine.nvim")
end)
