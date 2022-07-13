local nvim_lsp = require('lspconfig')

return {
	cmd = {
    "solargraph",
    "stdio"
  },
  filetypes = {
    "ruby"
  },
  flags = {
    debounce_text_changes = 150
  },
  settings = {
    solargraph = {
      -- useBundler = true,
      -- bundlerPath = "/Users/ebed/.rbenv/shims/bundler",
      -- commandPath = "/Users/ebed/.rbenv/shims/solargraph",
      -- logLevel = "warn",
      autoformat = true,
      completion = true,
      diagnostic = true,
      folding = true,
      references = true,
      rename = true,
      symbols = true
    }
  }
}

