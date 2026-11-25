include "lib/resistor_color";

.colors[:2] | map(color_code | tostring) | add | gsub("^0(?<a>\\d+)"; .a; "g")
