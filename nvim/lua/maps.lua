local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

local ls = require("luasnip")

local status, telescope = pcall(require, "telescope.builtin")
if status then
    -- Telescope
    map("n", "<leader>ff", telescope.find_files)
    map("n", "<leader>fg", telescope.live_grep)
    map("n", "<leader>fb", telescope.buffers)
    map("n", "<leader>fh", telescope.help_tags)
    map("n", "<leader>fs", telescope.git_status)
    map("n", "<leader>fc", telescope.git_commits)
else
    print("Telescope not found")
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Windows
map("n", "<leader>ñ", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree<CR>")
map("n", "<leader>r", "<CMD>Neotree action=close<CR>")

-- Buffer
--map("n", "<TAB>", "<CMD>bnext<CR>") -- "Next Tab"
--map("n", "<S-TAB>", "<CMD>bprevious<CR>") -- "Previous tab"

-- Terminal
map("n", "<leader>th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>")
map("n", "<leader>tv", "<CMD>ToggleTerm size=80 direction=vertical<CR>")

-- Markdown Preview
-- TODO: Esta dando erro
map("n", "<leader>m", "<CMD>MarkdownPreview<CR>")
map("n", "<leader>mn", "<CMD>MarkdownPreviewStop<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")

-- LuaSnips
vim.keymap.set({"i"}, "jk", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<TAB>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<S-TAB>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})

