if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload cretlo &
  done
else
  polybar --reload cretlo &
fi
