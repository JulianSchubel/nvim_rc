
vim.g.mapleader = " "

--check for duplicate mappings with :verbose map <mapping>
--ENTER NETRW
vim.keymap.set("n", "<leader>x", vim.cmd.Ex)

--NORMAL MODE
vim.keymap.set('i', '<a-e>', '<ESC>', { noremap = true})

--MOVE VISUAL SELECTION
--'> is end of visual selection, don't want the current line as it may not be the leading line
--gv selects the last visual selection (we lose it after executing move)
--= will align the text in a visual block with the nearest indentation level in the surronding text
vim.keymap.set("v", "J", ":m'>+1<CR>gv=gv")
--:m -2 because we want to move the selected visual selection between the immediate line above and the subsequent line above. -1 is the line above and text is positioned below, so effectively no change
--'< is start of visual selection, don't want the current line as it may not be the leading line
--gv selects the last visual selection (we lose it after executing move)
--= will align the text in a visual block with the nearest indentation level in the surronding text
vim.keymap.set("v", "K", ":m'<-2<CR>gv=gv")

--APPLY J WITHOUT MOVING CURSOR
--set mark with mx do J and the jump back using `x
vim.keymap.set("n", "J", "mxJ`x")

--KEEP CURRENT LINE WHEN DOING HALF-PAGE JUMPS
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--KEEP SEARCH TERMS CENTERED IN THE SCREEN
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

--DELETE TO VOID REGISTER BY DEFAULT
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

--PASTE OVER HIGHLIGHTED TEXT WITHOUT OVERWRITING REGISTER (DELETE HIGHLIGHTED TEXT TO VOID REGISTER)
--Void register does not store delte text for later use
--"_ specifies the void register
--d delete the visual block selected
vim.keymap.set("v", "<leader>p", "\"_dP")

--COPY TO THE SYSTEM CLIPBOARD
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>y", "\"+y")

--RUST REMAPS
--comment
vim.api.nvim_set_keymap('i', '<a-/>', '/*  */<ESC>2hi', { noremap = true})
--function
-- vim.keymap.set("n", '<leader>fn', 'ifn () -> {<CR>}<ESC>k3li', { noremap = true })
--match
-- vim.keymap.set("n", '<leader>m', 'imatch {<CR>}<ESC>O=> ,<ESC>ki', { noremap = true })
