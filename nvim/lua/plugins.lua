-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
    pattern = "plugins.lua",
    command = "source <afile> | PackerCompile",
})

return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- DevIcons
    use 'nvim-tree/nvim-web-devicons'

    -- ColorScheme
    use 'folke/tokyonight.nvim'

    -- Statusline
    use({
        "nvim-lualine/lualine.nvim",
        event = "BufEnter",
        config = function()
            require("configs.lualine")
        end,
        requires = { "nvim-web-devicons" },
    })

    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- File manager
    use({
        "nvim-neo-tree/neo-tree.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    })

    -- Show colors
    use({
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "*" })
        end,
    })

    -- Terminal
    use({
        "akinsho/toggleterm.nvim",
        tag = "*",
        config = function()
            require("configs.toggleterm")
        end,
    })

    -- Git
    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("configs.gitsigns")
        end,
    })

    -- LuaSnips
    use({
        "L3MON4D3/LuaSnip",
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        run = "make install_jsregexp",
        config = function()
            require("configs.luasnip")
        end,
      })
    
    -- VimTex
    use "lervag/vimtex"


    -- Auto pairs
    --use({
    --    "windwp/nvim-autopairs",
    --    config = function()
    --        require("configs.autopairs")
    --    end,
    --})
end)
