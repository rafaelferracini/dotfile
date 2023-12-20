local line_begin = require("luasnip.extras.expand_conditions").line_begin

local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local helpers=require('luasnip-helper-funcs')
local get_visual = helpers.get_visual

return{


--==========================
--    MATH ENVIRONMENTS
--==========================
  s({trig="mm", dscr="Inline math", snippetType="autosnippet"},
    fmta(
      [[
        $ <> $ 
      ]], 
      { i(1) }
    )
  ),
    
  s({trig="nn", dscr="Equation environtment", snippetType="autosnippet"},
    fmta(
      [[
        \begin{equation}
          <>
        \end{equation}

      ]], 
      { i(1) }
    ),
    {condition = line_begin}
  ),

  s({trig="pmat", dscr="Parenthesis Matrix", snippetType="autosnippet"},
    fmta(
      [[
        \begin{pmat}
          \item <>
        \end{pmate}

      ]], 
      { i(1) }
    ), {condition = line_begin}
  ),

  s({trig="bmat", dscr="Braket Matrix", snippetType="autosnippet"},
    fmta(
      [[
        \begin{bmat}
          \item <>
        \end{bmate}

      ]], 
      { i(1) }
    ), {condition = line_begin}
  ),

  s({trig="cases", dscr="cases", snippetType="autosnippet"},
    fmta(
      [[
        \begin{cases}
          <>
        \end{cases}
      ]], 
      { i(1) }
    ), {condition = in_mathzone}
  ),

--==========================
--         TEXT
--==========================
  s({trig="tt", dscr="Text", snippetType="autosnippet"},
    fmta(
      [[
        \text{<>} 
      ]], 
      { i(1) }
    ), {condition = in_mathzone}
  ),
    
  s({trig="tbf", dscr="Bold Text", snippetType="autosnippet"},
    fmta(
      [[
        \textbf{<>} 
      ]], 
      { i(1) }
    )  
  ),

  s({trig="tit", dscr="ITalic Text", snippetType="autosnippet"},
    fmta(
      [[
        \textit{<>} 
      ]], 
      { i(1) }
    )
  ),
    

    
  
--==========================
--    OTHER ENVIRONMENTS
--==========================
  s({trig="fig", dscr="Picture", snippetType="snippet"},
    fmta( 
      [[
        \begin{figure}[<>]
          \centering
          \includegraphics[width=0.8\textwidth]{<>}
          \caption{<>}
          \label{fig:<>}
        \end{figure}

      ]], 
      { i(1, "htb"), i(2), i(3), i(4) }
    ), {condition = line_begin}
  ),

  s({trig="enum", dscr="Enumerate", snippetType="autosnippet"},
    fmta(
      [[
        \begin{enumerate}
          \item <>
        \end{enumerate}

      ]], 
      { i(1) }
    ), {condition = line_begin}
  ),

  s({trig="item", dscr="Itemize", snippetType="autosnippet"},
    fmta(
      [[
        \begin{itemize}
          \item <>
        \end{itemize}

      ]], 
      { i(1) }
    ), {condition = line_begin}
  ),

  s({trig="ali", dscr="Align", snippetType="autosnippet"},
    fmta(
      [[
        \begin{align*}
          <>
        \end{align*}

      ]], 
      { i(1) }
    ), {condition = line_begin}
  ),
    


--==========================
--       SECTIONS 
--==========================
  s({trig="h0", dscr="Chapter", snippetType="autosnippet"},
    fmta(
      [[
        \chapter{<>}

      ]], 
      { i(1) }
    ),
    {condition = line_begin}
  ),

  s({trig="h1", dscr="Section", snippetType="autosnippet"},
    fmta(
      [[
        \section{<>}

      ]], 
      { i(1) }
    ), {condition = line_begin}
  ),
    
  s({trig="h2", dscr="Sub Section", snippetType="autosnippet"},
    fmta(
      [[
        \subsection{<>}

      ]], 
      { i(1) }
    ), {condition = line_begin}
  ),

  s({trig="h3", dscr="Sub sub section", snippetType="autosnippet"},
    fmta(
      [[
        \subsubsection{<>}

      ]], 
      { i(1) }
    ), {condition = line_begin}
  ),

  
--==========================
--      BEGIN END 
--==========================
  s({trig="beg", dscr="\\begin{} \\end{} generic environment", snippetType="autosnippet"},
  fmta(
    [[
      \begin{<>}
          <>
      \end{<>}
    ]],
    {
      i(1),
      i(2),
      rep(1),
    }
  ),
  {condition = line_begin}
  ),

}
