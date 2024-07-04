-- Configurações Lua

local global = vim.g
local o = vim.o


global.loaded_netrw       = 1
global.loaded_netrwPlugin = 1
-- Map <leader>: Configura a tecla <leader> para " "

global.mapleader = " "
global.maplocalleader = " "


-- Configurações de Aparências

o.number = true -- Adiciona a numeração de linhas 
o.relativenumber = true -- Faz com que a posição das linhas sejam mostradas relativamente a linha do cursos 
o.scrolloff = 8 -- Mínimo de linhas superiores e inferiores
o.signcolumn = "yes" -- Adiciona uma coluna a esquerda. Util para linting
o.cmdheight = 2 -- Configura a altura do prompt

-- Configurações de Identação
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true 
o.smarttab = true
o.smartindent = true

-- Configurações de Uso
o.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank
o.ignorecase = true -- Ignora case na pesquisa
o.updatetime = 100 -- Tempo em milisegundos para considerar as mudanças
o.splitright = true -- Ao fazer split horizontal, será para a direita
o.splitbelow = true -- Ao fazer split vertical, será para baixo
o.mouse = "a" -- Habilita o mouse para todos modos de uso

