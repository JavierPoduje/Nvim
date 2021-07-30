require 'nvim-treesitter.configs'.setup {
  additional_vim_regex_highlighting = true,
  highlight = { enable = true },
  indent = { enable = true },
  ensure_installed = {
    "tsx", "toml", "fish", "php", "json", "yaml", "swift", "html", "scss",
    "css", "python"
  }
}
