local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local helpers=require('luasnip-helper-funcs')
local get_visual = helpers.get_visual

return{

  s({trig="=>", dscr="Implies", snippetType="autosnippet"},
    {t("\\Rightarrow ")}, {condition = in_mathzone}
  ),

  s({trig="iff", dscr="If only if", snippetType="autosnippet"},
    {t("\\Leftrightarrow")}, {condition = in_mathzone}
  ),
  



  s({trig="ceil", dscr="Ceil function", snippetType="autosnippet"},
    fmta("\\left\\lceil <> \\right\\rceil", { i(1) }), 
    {condition = in_mathzone}
  ),
    
  s({trig="floor", dscr="floor function", snippetType="autosnippet"},
    fmta("\\left\\lfloor <> \\right\\rfloor", { i(1) }), 
    {condition = in_mathzone}
  ),


  
  
  
}

