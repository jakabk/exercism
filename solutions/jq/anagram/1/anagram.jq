def transform:
  ascii_downcase | explode
;

(.subject | transform) as $subject | .candidates | map(
  select( 
    (. | transform) as $candidate | $candidate != $subject and ($candidate | sort) == ($subject  | sort)
  )
)
