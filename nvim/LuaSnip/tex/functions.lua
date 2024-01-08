local line_begin = require("luasnip.extras.expand_conditions").line_begin

local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local helpers=require('luasnip-helper-funcs')
local get_visual = helpers.get_visual

return{

--==========================
--    CEIL AND FLOOR
--==========================
  s({trig="ceil", dscr="Ceil function", snippetType="autosnippet"},
    fmta("\\left\\lceil <> \\right\\rceil ", { i(1) }), 
    {condition = in_mathzone}
  ),
    
  s({trig="floor", dscr="floor function", snippetType="autosnippet"},
    fmta("\\left\\lfloor <> \\right\\rfloor ", { i(1) }), 
    {condition = in_mathzone}
  ),

--==========================
--         NORM
--==========================
  s({trig="norm", dscr="norm", snippetType="autosnippet"},
    fmta(
      [[
        \|<>\| 
      ]], 
      { i(1) }
    ), {condition = in_mathzone}
  ),

  s({trig="bar", dscr="bar", snippetType="autosnippet"},
    fmta(
      [[
        \overline{<>} 
      ]], 
      { d(1, get_visual) }
    ), {condition = in_mathzone }
  ),

  s({trig="hat", dscr="hat", snippetType="autosnippet"},
    fmta(
      [[
        \hat{<>} 
      ]], 
      { d(1, get_visual) }
    ), {condition = in_mathzone}
  ),

  s({trig="vec", dscr="vec", snippetType="autosnippet"},
    fmta(
      [[
        \vec{<>}
      ]], 
      { d(1, get_visual) }
    ), {condition = in_mathzone}
  ),
    
    
    

--==========================
--    GENERIC FUNCTIONS
--==========================
  s({trig="(?<!\\)(sin|cos|tan|cot|csc|cot|ln|log|exp|perp|arcsin|arccos|arctan|arccot|arccsc|arcsec)", dscr="Generic Functions", snippetType="autosnippet", regTrig = true},
    fmta(
      [[
        \<>
      ]], 
      { f(function(_, snip) return snip.captures[1] end ) }
    ), {condition = in_mathzone}
  ),
    

    


}
