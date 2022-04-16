#!/bin/bash
pgrep -x compton >/dev/null || compton --blur-background --blur-method kawase --blur-strength 20 --backend glx --vsync opengl
