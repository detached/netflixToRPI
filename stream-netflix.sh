#! /bin/bash

ffmpeg -s 1680x1050 -f x11grab -framerate 30 -i :0.0+1680,0 -f alsa -ac 2 -i pulse -vcodec libx264 -pix_fmt yuv420p -crf 23 -preset fast -maxrate 3000k -g 60 -vf "scale=800x600" -acodec libmp3lame -af aresample=async=1000 -f mpegts udp://192.168.0.32:1234
