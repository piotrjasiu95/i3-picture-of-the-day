#!/bin/bash

BIN_PATH="/usr/local/bin/i3-picture-of-the-day.sh"
SERVICE_PATH="/etc/systemd/user/i3-picture-of-the-day.service"
TIMER_PATH="/etc/systemd/user/i3-picture-of-the-day.timer"

install -Dm755 i3-picture-of-the-day.sh "$BIN_PATH"

install -Dm644 i3-picture-of-the-day.service "$SERVICE_PATH"
install -Dm644 i3-picture-of-the-day.timer "$TIMER_PATH"

# systemctl daemon-reload && systemctl enable --now --user i3-picture-of-the-day.timer

echo " /--------------------------------------------------------------------------------------\ "
echo " |                                                                                      | "
echo " | You have to manulay enable timer to start service, to do so run:                     | "
echo " |                                                                                      | "
echo " | systemctl daemon-reload && systemctl enable --now --user i3-picture-of-the-day.timer | "
echo " |                                                                                      | "
echo " \--------------------------------------------------------------------------------------/ "

