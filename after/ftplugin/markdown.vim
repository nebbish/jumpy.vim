" Header and horizontal rule
"

"" #
"" # These mappings represent:
"" #    first:  any heading
"" #    
"" #    second: a code block following a Heading or other non-indented line (EXCEPT lists)
"" # 
"" #    start:  a heading or plain non-indented line
"" #     then:  zero or more space-indented lines that match... 
"" #               1-3 spaces, then a non-space -- then anything
"" #                 4 spaces, then "````" exactly (the fence for a code block)
"" #                >5 spaces, then a non-space -- then anything
"" #     last:  the 4-space indented code block we want to be our jump landing
"" #            (so we use vim-only regex trick: "\zs", to mark start-of-match)
"" #
"" #                               | heading |    <- lines b/w heading & code ->    | indented code
"" #                               |         |                                      | 
call jumpy#map('\v%(^#{1,6})', '\v\c^[#a-z].*%(\n%( {1,3}\S.*| {5,}\S.*| *````.*)?)*\n {4}\zs\S')
