def validate:
  if test("[^ATGC]") then
    "Invalid nucleotide in strand" | halt_error(1)
  else
    .
  end
;

.strand | validate | split("") | reduce .[] as $k ({A: 0, T: 0, G: 0, C: 0}; .[$k] += 1)
