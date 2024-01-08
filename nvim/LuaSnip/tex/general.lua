local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local line_begin = require("luasnip.extras.expand_conditions").line_begin

local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local helpers=require('luasnip-helper-funcs')
local get_visual = helpers.get_visual

return {
  
--==========================
--      RAISE POWERS
--==========================
  s({trig="sq", dscr="Square Root", snippetType="autosnippet"},
    fmta(
      [[
        \sqrt{<>} 
      ]], 
      { d(1, get_visual) }
    ), {condition = in_mathzone}
  ),
    
  s({trig="sr", dscr="^2", snippetType="autosnippet"},
    {t("^2")}, {condition = in_mathzone}
  ),
  
  s({trig="cb", dscr="^3", snippetType="autosnippet"},
    {t("^3")}, {condition = in_mathzone}
  ),
  
--==========================
--      LEFT RIGHT
--==========================
  s({trig="()", dscr="left( right)", snippetType="autosnippet"},
    fmta(
      [[
        \left( <> \right)
      ]], 
      { d(1, get_visual) }
    ), {condition = in_mathzone}
  ),

  s({trig="[]", dscr="left[ right]", snippetType="autosnippet"},
    fmta(
      [[
        \left[ <> \right]
      ]], 
      { d(1, get_visual) }
    ), {condition = in_mathzone}
  ),

  s({trig="{}", dscr="left{ right}", snippetType="autosnippet"},
    fmta(
      [[
        \left{ <> \right}
      ]], 
      { d(1, get_visual) }
    ), {condition = in_mathzone}
  ),

  s({trig="<>", dscr="left< right>", snippetType="autosnippet"},
    fmta(
      [[
        \left<< <> \right>>
      ]], 
      { d(1, get_visual) }
    ), {condition = in_mathzone}
  ),

--==========================
--  SUPER AND SUB SCRIPS
--==========================
  s({trig="^^", dscr="Superscript", snippetType="autosnippet"},
    fmta(
      [[
        ^{<>}
      ]], 
      { i(1) }
    ), {condition = in_mathzone}
  ),

  s({trig="__", dscr="Subscript", snippetType="autosnippet"},
    fmta(
      [[
        _{<>}
      ]], 
      { i(1) }
    ), {condition = in_mathzone}
  ),

  s({trig="xnn", dscr="x_n", snippetType="autosnippet"},
    {t("x_{n}")}, {condition = in_mathzone}
  ),

  s({trig="ynn", dscr="y_n", snippetType="autosnippet"},
    {t("y_{n}")}, {condition = in_mathzone}
  ),

  s({trig="xii", dscr="x_i", snippetType="autosnippet"},
    {t("x_{i}")}, {condition = in_mathzone}
  ),

  s({trig="yii", dscr="y_i", snippetType="autosnippet"},
    {t("y_{i}")}, {condition = in_mathzone}
  ),
  
  s({trig="xjj", dscr="x_j", snippetType="autosnippet"},
    {t("x_{j}")}, {condition = in_mathzone}
  ),

  s({trig="yjj", dscr="y_j", snippetType="autosnippet"},
    {t("y_{j}")}, {condition = in_mathzone}
  ),

  s({trig="x00", dscr="x_0", snippetType="autosnippet"},
    {t("x_{0}")}, {condition = in_mathzone}
  ),
  
  s({trig="y00", dscr="y_0", snippetType="autosnippet"},
    {t("y_{0}")}, {condition = in_mathzone}
  ),
  

--==========================
--        PACKAGE
--==========================
  s({trig="rp", dscr="Use \\RequirePackage"},
    {
      t("\\RequirePackage{"), 
      i(1),
      t("}"),
      i(2)
    }
  )

}
