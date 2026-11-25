.strings as $words
  | if (($words | length) < 1) then [] else [range(0; .strings | length - 1)]
  | map("For want of a \($words[.]) the \($words[. + 1]) was lost.")
  | [.[], "And all for the want of a \($words[0])."] end



