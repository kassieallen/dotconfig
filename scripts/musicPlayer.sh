#!/usr/bin/env bash
while true; do
  if [[ "$(playerctl -l 2>&1)" != "No players found" ]]; then
    case "$(playerctl metadata -f '{{status}}')" in
      Playing) SONG="$(playerctl metadata -f "{{artist}} - {{title}}")"
      ;;
      Paused) SONG=$(printf -- '%s\n' "- Paused -")
      ;;
      *) SONG=$(printf -- '%s\n' "")
      ;;
    esac
    printf -- '%s\n' "SONG|string|$SONG"
    printf -- '%s\n' ""
    sleep 0.5
    else
      printf -- '%s\n' "SONG|string| "
      printf -- '%s\n' ""
      sleep 5
  fi
done

