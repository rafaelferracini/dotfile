require("settings")
require("plugins")
require("maps")

-- colorscheme config: tokyonight
local themeStatus, tokyonight = pcall(require, "tokyonight")

if themeStatus then
    vim.cmd("colorscheme tokyonight")
else
    return
end
