def validate:
  select(.[0]) | .[1] | halt_error(1)
;

def validate_series($series_length; $slice_length):
  [$series_length == 0, "series cannot be empty"],
  [$series_length < $slice_length, "slice length cannot be greater than series length"]
  | validate
;

def validate_slice($slice_length):
  [$slice_length < 0, "slice length cannot be negative"],
  [$slice_length == 0, "slice length cannot be zero"]
  | validate
;

.series as $series
| (.series | length) as $series_length
| .sliceLength as $slice_length 
| validate_series($series_length; $slice_length)
  // validate_slice($slice_length)
  // [ range($series_length - $slice_length + 1) | $series[.: (. + $slice_length)] ]
