local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" }
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
  },

  format_after_save = {
    lsp_format = "fallback",
    notify_on_error = true
  }
}

require("conform").setup(options)
