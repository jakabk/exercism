if (.series | length) == 0 then
  "series cannot be empty" | halt_error(1)
elif .sliceLength < 0 then
  "slice length cannot be negative" | halt_error(1)
elif .sliceLength == 0 then
  "slice length cannot be zero" | halt_error(1)
elif .sliceLength > (.series | length) then
  "slice length cannot be greater than series length" | halt_error(1)
else
  [
    .series as $series | .sliceLength as $slice_length |  range(($series | length) - $slice_length + 1) | $series[.:. + $slice_length]
  ]
end


