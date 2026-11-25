include "lib/resistor_color";

if .property == "colors"
  then colors
else
  .input.color | color_code
end
