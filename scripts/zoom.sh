#!/usr/bin/env bash
# setting the locale, some users have issues with different locales, this forces the correct one
export LC_ALL=en_US.UTF-8

main()
{
  is_zoomed="$(tmux display-message -p "#{window_zoomed_flag}")"
  if [[ "$is_zoomed" -gt "0" ]]; then
    echo "󰘕 "
  else
    echo "󰘖 "
  fi
}

#run main driver function
main
