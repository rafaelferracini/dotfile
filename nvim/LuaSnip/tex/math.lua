local line_begin = require("luasnip.extras.expand_conditions").line_begin

local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local helpers=require('luasnip-helper-funcs')
local get_visual = helpers.get_visual

return{

--==========================
--    SINGLE CALCULUS
--==========================
  s({trig="int", dscr="Indefinide Integral", snippetType="autosnippet"},
    fmta(
      [[
        \int <>
      ]], 
      { i(1) }
    ), {condition = in_mathzone}
  ),
    
  
  s({trig="dint", dscr="Definite Integral", snippetType="autosnippet"},
    fmta(
      [[
        \int_{<>}^{<>} 
      ]], 
      { i(1), i(2) }
    ), {condition = in_mathzone}
  ),
    

--==========================
--       FRACTION
--==========================
  s({trig="ff", dscr="Fraction", snippetType="autosnippet"},
    fmta(
      [[
        \frac{<>}{<>}
      ]], 
      { d(1, get_visual), i(2) }
    ),
    {condition = in_mathzone}
  ),

--==========================
--      EXPONENTIAL
--==========================
  s({trig="ee", dscr="Exponential", snippetType="autosnippet"},
    fmta(
      [[
        e^{<>}
      ]], 
      { i(1) }
    ), {condition = in_mathzone}
  ),

--==========================
--         LIMITS
--==========================
  s({trig="lim", dscr="limit", snippetType="autosnippet"},
    fmta(
      [[
        \lim_{<> \to <>} <>
      ]], 
      { i(1, "n"), i(2, "\\infty"), d(3, get_visual) }
    ), {condition = in_mathzone}
  ),

--==========================
--      SUM AND PROD
--==========================
  s({trig="sum", dscr="sum", snippetType="autosnippet"},
    fmta(
      [[
        \sum_{<> = <>}^{<>} <> 
      ]], 
      { i(1, "n"), i(2, "0"), i(3, "\\infty"), d(4, get_visual) }
    ), {condition = in_mathzone}
  ),

  s({trig="prod", dscr="prod", snippetType="autosnippet"},
    fmta(
      [[
        \prod_{<> = <>}^{<>} <> 
      ]], 
      { i(1, "n"), i(2, "1"), i(3, "\\infty"), d(4, get_visual) }
    ), {condition = in_mathzone}
  ),

--==========================
--         SERIES
--==========================
  s({trig="taylor", dscr="taylor series", snippetType="autosnippet"},
    fmta(
      [[
        \sum_{<> = <>}^{<>} \frac{f^{<>}(<>)}{<>!} \left( x- <>\right)^{<>}
      ]], 
      { i(1, "n"), i(2, "0"), i(3, "\\infty"), rep(1), i(4, "a"), rep(1), rep(4), rep(1)  }
    ), {condition = in_mathzone}
  ),

--==========================
--        FUNCTION
--==========================
  s({trig="letw", dscr="let omega", snippetType="autosnippet"},
    fmta(
      [[
        Let $\Omega \subset \mathbb{<>}$ be open
      ]], 
      { i(1, "R") }
    )
  ),

}   
