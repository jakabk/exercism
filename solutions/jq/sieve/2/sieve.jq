def multiples($limit; $p):
  [range(2; $limit / $p | floor + 1)] | map([. * $p, false])
;

.limit as $limit | reduce range(2; $limit + 1) as $p (
  [];
  if . | (contains([[$p, true]]) or contains([[$p, false]]))
    then .
  else . + [[$p, true]] + multiples($limit; $p)
  end
)
| map(select(.[1]) | .[0])
