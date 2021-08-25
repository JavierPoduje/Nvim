local prettier = function ()
  return {
    exe = "prettier",
    args = {
      "--stdin-filepath", vim.api.nvim_buf_get_name(0),
      "--arrow-parens", "avoid",
      "--prose-wrap", "always",
      "--single-quote",
      "--tab-width", 2,
      "--parser", "typescript"
    },
    stdin = true
  }
end

require('formatter').setup({
  logging = false,
  filetype = {
    sql = {
      function ()
        return {
          exe = "sql-formatter",
          args = {
            "-u",
            "-i", 4,
            "--lines-between-queries", 2,
            "-l", "mysql",
            vim.api.nvim_buf_get_name(0)
          },
          stdin = true
        }
      end
    },
    json = {
      function ()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath", vim.api.nvim_buf_get_name(0),
            "--single-quote",
            "--trailing-comma", "es5",
            "--tab-width", 2,
            "--parser", "json"
          },
          stdin = true
        }
      end
    },
    javascript = { prettier },
    typescript = { prettier }
  }
})

vim.api.nvim_set_keymap('n', '<leader>ff', ':Format<CR>', { noremap = true, silent = true })
