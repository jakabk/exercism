def filter:
  gsub("\\s+"; "") | if test("^\\d{2,}$") then . else false end
;

def transform:
  . * 2 | if . > 9 then . - 9 else . end
;

def transform_every_second_digit:
  [
    . as $number
    | length as $length
    | (if length % 2 == 0 then 0 else 1 end) as $even
    | range($length) as $i
    | $number[$i:$i + 1]
    | tonumber
    | if $i % 2 == $even then transform else . end
  ]
;

def is_valid:
  add | . % 10 == 0
;

filter | if . then transform_every_second_digit | is_valid else . end
