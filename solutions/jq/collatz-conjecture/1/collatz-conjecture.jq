def steps:
  def _do($n; $number):
    if $number == 1
      then $n
    elif $number % 2 == 0
      then _do($n + 1; $number / 2)
    else
      _do($n + 1; $number * 3 + 1)
    end
  ;

  if . > 0
    then _do(0; .)
  else
    "Only positive integers are allowed" | halt_error
  end
;
