local M = {}
local map = vim.keymap.set

M.on_attach = function(_, bufnr)
  local function opts(desc)
    return { buffer = bufnr, desc = "LSP " .. desc }
  end

  map({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts "Code action")
  map('n', '<leader>D', vim.lsp.buf.type_definition, opts "Go to type definition")
  map('n', '<leader>gD', vim.lsp.buf.declaration, opts "Go to declaration")
  map('n', '<leader>gd', vim.lsp.buf.definition, opts "Go to definition")
  map('n', '<leader>gi', vim.lsp.buf.implementation, opts "Go to implementation")
  map('n', '<leader>gr', vim.lsp.buf.references, opts "Show references")
  map('n', '<leader>sh', vim.lsp.buf.signature_help, opts "Show signature help")
end

-- disable semanticTokens
M.on_init = function(client, _)
  if client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.defaults = function()
  local lspconfig = require('lspconfig')

  -- lua_ls
  lspconfig.lua_ls.setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
    on_init = M.on_init,
  }
  -- rust_analyzer
  lspconfig.rust_analyzer.setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
    on_init = M.on_init,
  }
end
return M
