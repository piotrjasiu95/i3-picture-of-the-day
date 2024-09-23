#!/bin/bash

BIN_PATH="/usr/local/bin/i3-picture-of-the-day.sh"
SERVICE_PATH="/etc/systemd/user/i3-picture-of-the-day.service"
TIMER_PATH="/etc/systemd/user/i3-picture-of-the-day.timer"

rm -f "$BIN_PATH"
rm -f "$SERVICE_PATH"
rm -f "$TIMER_PATH"
