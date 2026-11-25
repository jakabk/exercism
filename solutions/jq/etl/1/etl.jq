.legacy | to_entries | map((.key | tonumber) as $k | .value | map({(ascii_downcase): $k})) | flatten | add

