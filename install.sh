#!/bin/sh

# Copyright (c) 2012 Shane Quigley
# 
# This software is MIT licensed see link for details
# http://www.opensource.org/licenses/MIT

path="$(kde4-config --path services)"
spath="$(echo ${path%:*})"
mkdir -p "$spath"ServiceMenus/UbuntuOne/
cp * "$spath"ServiceMenus/UbuntuOne/
rm -rf "$spath"ServiceMenus/Ubuntu\ One/
kdesudo apt-get install ruby ubuntuone-control-panel-qt xclip
