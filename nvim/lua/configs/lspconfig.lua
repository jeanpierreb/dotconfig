require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "tailwind", "eslint" }
vim.lsp.enable(servers)

-- Configure CSS LSP to ignore Tailwind at-rules
vim.lsp.config.cssls = {
  settings = {
    css = {
      lint = {
        unknownAtRules = "ignore"
      }
    }
  }
}

-- read :h vim.lsp.config for changing options of lsp servers 
