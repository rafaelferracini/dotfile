local line_begin = require("luasnip.extras.expand_conditions").line_begin

return{

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



--==========================
--    MATH ENVIRONMENT 
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


  






}
