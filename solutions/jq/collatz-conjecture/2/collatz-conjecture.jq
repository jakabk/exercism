def assert(condition; error_message):
  if condition then error_message | halt_error else . end
;

def _step($n; $number):
  if $number == 1
    then $n
  elif $number % 2 == 0
    then _step($n + 1; $number / 2)
  else
    _step($n + 1; $number * 3 + 1)
  end
;

def steps:
  assert(. < 1; "Only positive integers are allowed") | _step(0; .)
;
