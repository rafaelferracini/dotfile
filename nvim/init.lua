require("settings")
require("plugins")
require("maps")
require("luasnip.loaders.from_lua").load({paths="~/AppData/Local/nvim/LuaSnip"})


-- colorscheme config: tokyonight
local themeStatus, tokyonight = pcall(require, "tokyonight")

if themeStatus then
    vim.cmd("colorscheme tokyonight")
else
    return
end
