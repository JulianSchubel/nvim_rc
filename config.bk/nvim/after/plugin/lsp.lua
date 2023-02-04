-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')
-- (Optional) Configure lua language server for neovim
--lsp.nvim_workspace()

lsp.ensure_installed ({
	"rust_analyzer",
	"pyright",
	"sumneko_lua"
})

--remaps for auto-complete
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select), 	--previous item
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),	--next item
	['<C-y>'] = cmp.mapping.confirm({ select = true }), 	--select a completion
	['<C-Space>'] = cmp.mapping.complete()			--starts completion
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

--on-attach occurs on every buffer that has an LSP associated with it
lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	--the below remaps will only exists for the current buffer (bufnr) one is on
	vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<leader>k", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_synbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)
lsp.setup()
