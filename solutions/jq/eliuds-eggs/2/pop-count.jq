def count_bits:
  if . < 1
    then 0
  else
    . % 2 + (. / 2 | floor | count_bits)
  end
;

.number | count_bits
