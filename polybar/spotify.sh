#!/bin/bash
if [ "$(playerctl status)" = "Playing" ]  || [ "$(playerctl status)" = "Paused" ] ; then
  title=`exec playerctl metadata xesam:title`
  artist=`exec playerctl metadata xesam:artist`
  echo " $title - $artist %{A:playerctl previous:}   %{A}  %{A:playerctl play-pause:}     %{A:playerctl next:}    %{A}"
else
  echo " "
fi

