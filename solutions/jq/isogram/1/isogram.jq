.phrase | gsub("[ -]"; "") | ascii_downcase | explode | length == (unique | length)
