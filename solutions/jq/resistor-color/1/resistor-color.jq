["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"] as $colors
| if .property == "colors"
    then $colors
  else
    .input.color as $color | $colors | index($color)
  end
