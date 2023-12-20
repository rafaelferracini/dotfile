local line_begin = require("luasnip.extras.expand_conditions").line_begin

local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local helpers=require('luasnip-helper-funcs')
local get_visual = helpers.get_visual

return{
  s({trig="templatestart", dscr="Template", snippetType="autosnippet"},
    fmta(
      [[
        \documentclass{report}

        \input{preamble}
        \input[macros}
        \input{letterfonts}

        \title{\Huge{<>}\\<>
        \author{\huge{Rafael Haas Ferracini}
        \date{}

        \begin{document}

        \maketitle
        \pdfbookmark[section]{\contentsname}{toc}
        \tableofcontents
        \pagebreak

        \chapter{}
        \section{}

        \end{document}
      ]], 
      { i(1), i(2) }
    ), {condition = line_begin }
  ),
    
}
