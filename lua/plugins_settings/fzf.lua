local opts = { noremap = true, silent = true }

vim.api.nvim_command([[
if executable('rg')
    let g:rg_derive_root='true'
endif
]])

vim.g.fzf_layout = { window = { width = 0.8, height = 0.8 } }
vim.g.fzf_colors = {
  fg = { 'fg','Normal' },
  bg = { 'bg','Normal' },
  hl = { 'fg','Comment' },
  info = { 'fg', 'PreProc' },
  border = { 'fg','Ignore' },
  prompt = { 'fg','Conditional' },
  pointer = { 'fg','Exception' },
  marker = { 'fg','Keyword' },
  spinner = { 'fg','Label' },
  header = { 'fg','Comment' }
}
vim.g.fzf_colors["fg+"] = { 'fg','CursorLine' }
vim.g.fzf_colors["bg+"] = { 'bg','CursorLine', 'CursorColumn' }
vim.g.fzf_colors["hl+"] = { 'fg','Statement' }

vim.api.nvim_command([[
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --hidden --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
]])
vim.api.nvim_set_keymap('n', '<Leader>pS', ":Rg --fixed-strings --ignore-case '' **/*.<Left><Left><Left><Left><Left><Left><Left>", { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>ps', ':RG<CR>', opts)

-- Files search
vim.api.nvim_command("let $FZF_DEFAULT_OPTS='--reverse'")
vim.api.nvim_command([[
let $FZF_DEFAULT_COMMAND = 'rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
]])
