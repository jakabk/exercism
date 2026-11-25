def filter:
  gsub("\\s+"; "") | if test("^\\d{2,}$") then . else false | halt_error(0) end
;

def _transform:
  . * 2 | if . > 9 then . - 9 else . end
;

def _validate:
  . % 10 == 0
;

def luhn:
  [
    . as $number
    | length as $length
    | (if length % 2 == 0 then 0 else 1 end) as $every_first_or_every_second
    | range($length) as $i
    | $number[$i:$i + 1] | tonumber
    | if $i % 2 == $every_first_or_every_second then _transform else . end
  ] | add | _validate
;

filter | luhn
