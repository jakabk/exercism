def dec2bin:
  if . < 1
    then empty
  else
    . % 2, ((. / 2 | floor) | dec2bin)
  end
;

.number | [dec2bin] | add // 0 
