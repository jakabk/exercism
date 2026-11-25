if (.strand1 | length) == (.strand2 | length) then
  [.[] | explode] | transpose | map(select(first != last)) | length 
else
  "strands must be of equal length" | halt_error
end
