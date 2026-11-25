#.value / "" | reverse | add // ""
.value / "" | reduce .[] as $char ([]; [$char] + .) | add // ""
