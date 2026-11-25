.number | . as $number | [
  [. % 3 == 0, "i"],
  [. % 5 == 0, "a"],
  [. % 7 == 0, "o"]
] | map(select(.[0]) | .[1]) | map("Pl\(.)ng") | add // "\($number)"
