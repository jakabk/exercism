if (.strand1 | length) == (.strand2 | length) then
  [
    [.[] | split("")] as $strings | range(0, $strings[0] | length) | $strings[0][.] != $strings[1][.]
  ] | map(select(.)) | length
else
  "strands must be of equal length" | halt_error
end
