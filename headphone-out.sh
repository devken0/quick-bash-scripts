#!/bin/sh
pactl set-sink-port 0 analog-output-headphones

#this lists the currently used audio ports
#pactl list sinks |& grep -E "Sink|Ports|analog-ou"

