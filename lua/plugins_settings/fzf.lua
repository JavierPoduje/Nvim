local g = require('g')

v.nvim_command([[
if executable('rg')
    let g:rg_derive_root='true'
endif
]])

vim.g.fzf_layout = { window = { width = 0.8, height = 0.8 } }
vim.g.fzf_colors = {
	fg = { "fg", "Normal" },
	bg = { "bg", "Normal" },
	hl = { "fg", "Comment" },
	info = { "fg", "PreProc" },
	border = { "fg", "Ignore" },
	prompt = { "fg", "Conditional" },
	pointer = { "fg", "Exception" },
	marker = { "fg", "Keyword" },
	spinner = { "fg", "Label" },
	header = { "fg", "Comment" },
}
vim.g.fzf_colors["fg+"] = { "fg", "CursorLine" }
vim.g.fzf_colors["bg+"] = { "bg", "CursorLine", "CursorColumn" }
vim.g.fzf_colors["hl+"] = { "fg", "Statement" }

v.nvim_command([[
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --hidden --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
]])
g.n_noisy_map(
	"<Leader>pS",
	":Rg --fixed-strings --ignore-case '' **/*." .. string.rep('<Left>', 7)
)
g.n_silent_map("<leader>ps", ":RG<CR>")

-- Files search
v.nvim_command("let $FZF_DEFAULT_OPTS='--reverse'")
v.nvim_command([[
let $FZF_DEFAULT_COMMAND = 'rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
]])
