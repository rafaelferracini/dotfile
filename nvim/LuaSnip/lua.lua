local line_begin = require("luasnip.extras.expand_conditions").line_begin

return{
  s({trig="snip", dscr="Snippet template", snippetType="autosnippet"},
  fmta(
      [[

        s({trig="<>", dscr="<>", snippetType="<>"},
          fmta(
            [[
              <>
            <>, 
            { <> }
          )<>
        ),
          <>
      ]],
      { i(1), i(2), i(3, "snippet"), i(4), i(5, "]]"), i(6), i(7, ", {condition = }"), i(8)}
    ),
  {conditions = line_begin}
  ),

  s({trig="nsnip", dscr="Normal snippet", snippetType="autosnippet"},
    fmta(
      [[

        s({trig="<>", dscr="<>", snippetType="<>"},
          {t("<>")}
        ),

      ]], 
      { i(1), i(2), i(3, "autosnippet"), i(4) }
    )
  ),
    


}


