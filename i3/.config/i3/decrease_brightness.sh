#!/bin/bash
current=$(light -G)
min=10
new=$(echo "$current - 10" | bc)
if (( $(echo "$new < $min" | bc -l) )); then
  new=$min
fi
light -S $new
