#!/bin/bash

# Setup VNC server
Xvfb :1 -screen 0 1280x800x16 &
x11vnc -create -bg -quiet -forever -shared -display :1

# Execute URSim
/ursim/start-ursim.sh ${ROBOT_MODEL}
