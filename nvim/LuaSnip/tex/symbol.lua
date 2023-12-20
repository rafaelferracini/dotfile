local line_begin = require("luasnip.extras.expand_conditions").line_begin

local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local helpers=require('luasnip-helper-funcs')
local get_visual = helpers.get_visual


return{

  s({trig="oo", dscr="Infinity", snippetType="autosnippet"},
    {t("\\infty ")}, {condition = in_mathzone}
  ),
  
--==========================
--      SET THEORY
--==========================
  s({trig="cc", dscr="subset", snippetType="autosnippet"},
    {t("\\subset ")}, {condition = in_mathzone}
  ),

  s({trig="inn", dscr="In", snippetType="autosnippet"},
    {t("\\in ")}, {condition = in_mathzone}
  ),

  s({trig="nin", dscr="not in", snippetType="autosnippet"},
    {t("\\not\\in ")}, {condition = in_mathzone}
  ),

  s({trig="Nn", dscr="Cap", snippetType="autosnippet"},
    {t("\\cap ")}, {condition = in_mathzone}
  ),

  s({trig="UU", dscr="Cup", snippetType="autosnippet"},
    {t("\\cup ")}, {condition = in_mathzone}
  ),

  s({trig="OO", dscr="Empty Set", snippetType="autosnippet"},
    {t("\\emptyset ")}, {condition = in_mathzone}
  ),
  
  
  s({trig="NN", dscr="Natural", snippetType="autosnippet"},
    {t("\\mathbb{N} ")}, {condition = in_mathzone}
  ),
  
  s({trig="QQ", dscr="Rational", snippetType="autosnippet"},
    {t("\\mathbb{Q} ")}, {condition = in_mathzone}
  ),
  
  s({trig="ZZ", dscr="Integer", snippetType="autosnippet"},
    {t("\\mathbb{Z} ")}, {condition = in_mathzone}
  ),
  
  s({trig="RR", dscr="Real", snippetType="autosnippet"},
    {t("\\mathbb{R} ")}, {condition = in_mathzone}
  ),
  
  s({trig="CC", dscr="Complex", snippetType="autosnippet"},
    {t("\\mathbb{C} ")}, {condition = in_mathzone}
  ),

  s({trig="HH", dscr="H", snippetType="autosnippet"},
    {t("\\mathbb{H} ")}, {condition = in_mathzone}
  ),
  
  s({trig="DD", dscr="D", snippetType="autosnippet"},
    {t("\\mathbb{D} ")}, {condition = in_mathzone}
  ),
  
--==========================
--       OPERATORS
--==========================
  s({trig="nabl", dscr="Nabla", snippetType="autosnippet"},
    {t("\\nabla ")}, {condition = in_mathzone}
  ),
  
  s({trig="xx", dscr="Cross", snippetType="autosnippet"},
    {t("\\times ")}, {condition = in_mathzone}
  ),
  
  s({trig="**", dscr="Cdot", snippetType="autosnippet"},
    {t("\\cdot ")}, {condition = in_mathzone}
  ),
  

--==========================
--         LOGIC
--==========================
  s({trig="=>", dscr="Implies", snippetType="autosnippet"},
    {t("\\Rightarrow ")}, {condition = in_mathzone}
  ),

  s({trig="iff", dscr="If only if", snippetType="autosnippet"},
    {t("\\Leftrightarrow ")}, {condition = in_mathzone}
  ),

  s({trig="EE", dscr="Exists", snippetType="autosnippet"},
    {t("\\exists ")}, {condition = in_mathzone}
  ),
  
  s({trig="AA", dscr="For all", snippetType="autosnippet"},
    {t("\\forall ")}, {condition = in_mathzone}
  ),

  s({trig="->", dscr="to", snippetType="autosnippet"},
    {t("\\to ")}, {condition = in_mathzone}
  ),
  
  s({trig="!>", dscr="mapsto", snippetType="autosnippet"},
    {t("\\mapsto ")}, {condition = in_mathzone}
  ),
  
  
--==========================
--      COMPARISION
--==========================
  s({trig="!=", dscr="Not equals", snippetType="autosnippet"},
    {t("\\neq ")}, {condition = in_mathzone}
  ),
  
  s({trig="==", dscr="Equals (aligned)", snippetType="autosnippet"},
    {t("&= "), i(1), t(" \\\\")}, {condition = in_mathzone}
  ),

  s({trig="<=", dscr="Less equal", snippetType="autosnippet"},
    {t("\\leq ")}, {condition = in_mathzone}
  ),
  
  s({trig=">=", dscr="Greater equal", snippetType="autosnippet"},
    {t("\\ge ")}, {condition = in_mathzone}
  ),

  s({trig=">>", dscr="Much greater", snippetType="autosnippet"},
    {t("\\gg ")}, {condition = in_mathzone}
  ),
  
  s({trig="<<", dscr="Much smaller", snippetType="autosnippet"},
    {t("\\ll ")}, {condition = in_mathzone}
  ),

  s({trig="~", dscr="Similar", snippetType="autosnippet"},
    {t("\\sim ")}, {condition = in_mathzone}
  ),

}

