local lsp_installer = require('nvim-lsp-installer')

-- Register a handler that will be called for all installer servers.
-- Alternatively, you may also register handlers on specific server instances instead
lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require('config.lsp.handlers').on_attach,
    capabilities = require('config.lsp.handlers').capabilities,
  }

  if server.name == 'jsonls' then
    local jsonls_opts = require('config.lsp.settings.jsonls')
    opts = vim.tbl_deep_extend('force', jsonls_opts, opts)
  end

  if server.name == 'sumneko_lua' then
    local sumneko_lua_opts = require('config.lsp.settings.sumneko_lua')
    opts = vim.tbl_deep_extend('force', sumneko_lua_opts, opts)
  end

  if server.name == 'pyright' then
    local pyright_opts = require('config.lsp.settings.pyright')
    opts = vim.tbl_deep_extend('force', pyright_opts, opts)
  end

  server:setup(opts)
end)
