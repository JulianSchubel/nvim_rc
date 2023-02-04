function PaintMyWorld(colour)
	--use "custom" colour scheme as default
	colour = colour or "custom"
	vim.cmd.colorscheme(colour)

	--set transparent background
	--0 is the global space (every window gets this)
	--Normal just means nvim, who knows why
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

PaintMyWorld()
