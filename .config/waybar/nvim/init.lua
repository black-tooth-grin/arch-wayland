-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

-- vim.cmd("let g:gruvbox_transparent_bg = 1")
-- Enable syntax highlighting
vim.cmd("syntax on")

-- Enable mouse support
vim.opt.mouse = "a"

-- Set terminal title
vim.opt.title = true

-- Enable persistent undo
vim.opt.undofile = true

-- Allow switching buffers without saving
vim.opt.hidden = true

-- Case-insensitive search unless uppercase is used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Use system clipboard for yank/paste
vim.opt.clipboard = "unnamedplus"

-- Allow writing with sudo
vim.cmd("cmap w!! w !sudo tee % > /dev/null")

-- Show incomplete commands in the status line
vim.opt.showcmd = true

-- Set background transparency
vim.cmd([[
    " highlight Normal guibg=none
    " highlight NonText guibg=none
    " highlight Normal ctermbg=none
    " highlight NonText ctermbg=none
]])
vim.o.background = "dark" -- or "light" for light mode
-- Default options:
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})
vim.cmd([[colorscheme gruvbox]])
-- Set tab width and indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- Optional: Convert tabs to spaces
