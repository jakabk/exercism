def distance:
  pow(.x; 2) + pow(.y; 2) | sqrt
;

def score:
  if . <= 1 then 10
  elif . <= 5 then 5
  elif . <= 10 then 1
  else 0
  end
;

distance | score
