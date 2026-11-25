def trim:
  sub("[[:space:]]+$"; "")
; 

def yelling:
  test("[[:upper:]]") and (test("[[:lower:]]") | not)
;

def asking:
  trim | endswith("?")
;

.heyBob | [
  [yelling and asking, "Calm down, I know what I'm doing!"],
  [yelling, "Whoa, chill out!"],
  [asking, "Sure."],
  [trim | length == 0, "Fine. Be that way!"]
] | map(select(first) | last) | first // "Whatever."
