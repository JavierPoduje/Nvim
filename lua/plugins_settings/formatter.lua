require('formatter').setup({
  logging = false,
  filetype = {
    sql = {
      function ()
        return {
          exe = "sql-formatter",
          args = { "-u", "-i", 4, "--lines-between-queries", 2, "-l", "mysql" },
          stdin = true
        }
      end
    }
  }
})
