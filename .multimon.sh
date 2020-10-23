#!/bin/bash
intern=eDP
extern=HDMI-0

if xrandr | grep "$extern disconnected"; then
	/home/azamora/.screenlayout/single.sh
else
	/home/azamora/.screenlayout/multi-down.sh
fi
