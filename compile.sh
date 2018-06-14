#!/bin/bash

# sudo apt install meson libglib2.0-dev yelp-tools libgirepository1.0-dev libgtk-3-dev

kill -9 $(ps uax | grep lollypop-portal | grep python | awk '{print $2}')

meson builddir --prefix=/home/`whoami`/.local
ninja -C builddir install
