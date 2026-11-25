def colors:
  ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
;

def color_code:
  . as $color | colors | index($color)
;
