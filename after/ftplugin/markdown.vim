" Header and horizontal rule
"

"" #
"" # These mappings represent:
"" #    first:    any heading
"" #    second:   the 4-space indented code block after a heading or bullet
"" #
"" #                               | heading  |<- lines b/w heading & code ->| indented code
"" #                               |          |                              | 
call jumpy#map('\v%(^#{1,6})', '\v^%(\=|-|#).*%(\n%(  \S.*|    %(let|vs)>.*)?)*\n    \zs\S')
