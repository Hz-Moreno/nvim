require("moreno.set")
require("moreno.remap")
require("moreno.lazy_init")

local augroup = vim.api.nvim_create_augroup
local MorenoGroup = augroup('moreno', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
	require("plenary.reload").reload_module(name)
end

vim.filetype.add({
	extension = {
		templ = 'templ',
	}
})

autocmd('BufEnter', {
	group = MorenoGroup,
	callback = function()
		vim.cmd.colorscheme("tokyonight-night")
	end
})
