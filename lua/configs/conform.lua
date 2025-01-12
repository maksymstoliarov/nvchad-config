local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        go = { "gofmt" },
        python = { "isort", "black" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        -- php = { "pint" }, --  "pint", "php_cs_fixer
        -- rust = { "rustfmt" },
    },
    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
    -- formatters = {
    --     ["php"] = {
    --         command = "php-cs-fixer",
    --         args = {
    --             "fix",
    --             -- "--rules=@PSR12", -- Formatting preset. Other presets are available, see the php-cs-fixer docs.
    --             "$FILENAME",
    --         },
    --         stdin = false,
    --     },
    -- },
    -- notify_on_error = true,
}

return options
