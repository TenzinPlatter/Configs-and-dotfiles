function Aesthetics()
	vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
	vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
	vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=true })

	-- transparent background
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	-- set highlight colours
	vim.cmd('hi Visual guibg=Black gui=none')
	vim.cmd('hi MatchParen guibg=#82aaff')
	vim.cmd('hi Search guibg=#FEFFA7')
	vim.cmd('hi CursorLineNr guibg=White')

	-- set no code wrap
	vim.cmd('set nowrap')
end

vim.g.mapleader = ' '

--disables netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- for obsidian.nvim
vim.opt.conceallevel = 1

vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'

vim.opt.termguicolors = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("tenzin.plugins", {})
require("tenzin.remaps")
Aesthetics()

-- transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
