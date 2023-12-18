local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local helpers=require('luasnip-helper-funcs')
local get_visual = helpers.get_visual

return{

  s({trig="ff", dscr="Fraction", snippetType="autosnippet"},
    fmta(
      [[
        \frac{<>}{<>}
      ]], 
      { d(1, get_visual), i(2) }
    ),
    {condition = in_mathzone}
  ),

  s({trig="ee", dscr="Exponential", snippetType="autosnippet"},
    fmta(
      [[
        e^{<>}
      ]], 
      { i(1) }
    ), {condition = in_mathzone}
  ),
    
  

  s({trig="sp", dscr="Superscript", snippetType="autosnippet"},
    fmta(
      [[
        ^{<>}
      ]], 
      { i(1) }
    ), {condition = in_mathzone}
  ),

  s({trig="sb", dscr="Subscript", snippetType="autosnippet"},
    fmta(
      [[
        _{<>}
      ]], 
      { i(1) }
    ), {condition = in_mathzone}
  ),
    

}   
