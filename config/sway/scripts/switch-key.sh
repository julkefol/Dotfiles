# A simple workaround to change the keyboard layout to Bangla(Probhat).
# Btw, not works on all windows.
#! /bin/bash

PROC_NAME="ibus-portal"
RUN="ibus-daemon -d"
STOP="ibus exit"

if pgrep -x $PROC_NAME > /dev/null
then
    notify-send -i $HOME/repos/Dotfiles/images/en.png "Switched to English input."
    $STOP
else
    notify-send -i $HOME/repos/Dotfiles/images/bn.png "Switched to Bangla input."
    $RUN
fi
