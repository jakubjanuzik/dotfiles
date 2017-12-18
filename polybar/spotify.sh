#!/bin/bash
if [ "$(playerctl status)" = "Playing" ]  || [ "$(playerctl status)" = "Paused" ] ; then
  title=`exec playerctl metadata xesam:title`
  artist=`exec playerctl metadata xesam:artist`
  echo "  %{A:playerctl previous:} <<  %{A} %{A:playerctl play-pause:} --- %{A}  %{A:playerctl next:} >>  %{A} $title - $artist"
else
  echo "  "
fi

