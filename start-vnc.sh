#!/bin/bash

vncserver $DISPLAY -geometry 1280x800 -depth 16 -localhost no
tail -F /root/.vnc/*.log