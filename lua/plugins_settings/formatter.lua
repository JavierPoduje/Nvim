local current_file = vim.api.nvim_buf_get_name(0)

local prettier_args = function(parser)
  return {
    "--stdin-filepath", current_file,
    -- Descomentar para usar el .prettierrc* del proyecto
    "--parser", parser,
    "--config", "~/.config/nvim/.prettierrc.js" -- Personal preferences
  }
end

local sql_args = function()
  return {
    "-u",
    "-i", 4,
    "--lines-between-queries", 2,
    "-l", "mysql",
    current_file
  }
end

local formatter = function(formatter, args, stdin)
  return function ()
    return {
      exe = formatter,
      args = args,
      stdin = stdin
    }
  end
end

require('formatter').setup({
  logging = false,
  filetype = {
    elixir =            { formatter("mix format", { current_file }, false) },
    html =              { formatter("prettier", prettier_args("html"), true) },
    javascript =        { formatter("prettier", prettier_args("typescript"), true) },
    json =              { formatter("prettier", prettier_args("json"), true) },
    sql =               { formatter("sql-formatter", sql_args(), true) },
    typescript =        { formatter("prettier", prettier_args("typescript"), true) },
    typescriptreact =   { formatter("prettier", prettier_args("typescript"), true) },
  }
})

vim.api.nvim_set_keymap('n', '<leader>ff', ':Format<CR>', { noremap = true, silent = true })
