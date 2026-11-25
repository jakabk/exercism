def flattn:
  if type == "array"
    then .[] | flattn
  else
    .
  end
;

.array | map(flattn | select(.))
