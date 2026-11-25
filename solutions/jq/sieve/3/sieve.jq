.limit as $limit | reduce range(2; $limit | sqrt) as $p (
  [range(2; $limit + 1)]; . - [range($p + $p; $limit + 1; $p)]
)
