.number | . as $number | [
  [. % 3 == 0, "i"],
  [. % 5 == 0, "a"],
  [. % 7 == 0, "o"]
] | map(select(first) | last | "Pl\(.)ng") | add // "\($number)"
