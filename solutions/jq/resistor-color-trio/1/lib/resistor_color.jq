def colors:
  ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
;

def color_code:
  . as $color | colors | index($color)
;

def unit_with_prefixes:
  ["", "kilo", "mega", "giga"] | map(. + "ohms")
;

def resistor_value:
  ((.[0] | color_code) * 10 + (.[1] | color_code)) * pow(10; .[2] | color_code)
  | [., if . > 0 then log10 / 3 | floor else 0 end]
  | {
      value: (.[0] / pow(10; .[1] * 3)),
      unit: unit_with_prefixes[.[1]]
    }
;
