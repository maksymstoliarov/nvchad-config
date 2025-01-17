return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        opts = require("configs.conform"),
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lspconfig")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "php",
                "python",
                "javascript",
                "typescript",
                "go",
                "markdown",
                "json",
                "yaml",
                "rust",
            },
            highlight = {
                enable = true,
                use_languagetree = true,
            },
            indent = { enable = true },
        },
    },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = require("configs.nvim-tree"),
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
    {
        "github/copilot.vim",
        lazy = false,
        config = function()
            -- Mapping tab is already used by NvChad
            vim.g.copilot_enabled = false
            vim.g.copilot_no_tab_map = true
            vim.g.copilot_assume_mapped = true
            vim.g.copilot_tab_fallback = ""
            -- The mapping is set to other key, see custom/lua/mappings
            -- or run <leader>ch to see copilot mapping section
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        opts = {
            enabled = function()
                return (vim.bo.ft ~= "markdown")
            end,
        },
    },
}
