vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.laststatus = 0
vim.opt.numberwidth = 3
vim.opt.statuscolumn = "%=%{v:lnum}%s   "
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')

vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
	highlight FloatBorder guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
	highlight NvimTreeNormal guibg=NONE ctermbg=NONE
	highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE
	highlight VertSplit guibg=NONE ctermbg=NONE
]]


vim.cmd([[
  augroup packer_auto_compile
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

vim.cmd [[
  autocmd FileType NvimTree lua require("transparent").toggle(true)
]]

require("ibl").setup({
  indent = {
    char = "│",
  },
  scope = {
    enabled = true,
  },
})

require("nvim-tree").setup {
  renderer = {
    highlight_opened_files = "none",
    group_empty = true,
  },
  view = {
    width = 30,
    side = "left",
    float = { enable = false },
  },
}

require("transparent").setup({
  extra_groups = { 
	"NormalFloat", 
	"NvimTreeNormal", 
	"NvimTreeNormalNC", 
	"SignColumn", 
	"VertSplit", 
	"WinSeparator" 
	}
})
require("nvim-surround").setup()
require("plugins")
