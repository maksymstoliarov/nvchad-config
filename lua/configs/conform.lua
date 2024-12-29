local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        go = { "goimports", "gofmt" },
        python = { "isort", "black" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        php = { "php_cs_fixer" }, --  "pint", "
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

return options
