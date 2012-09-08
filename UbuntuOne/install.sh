#!/bin/sh

path="$(kde4-config --path services)"
spath="$(echo ${path%:*})"
mkdir -p "$spath"ServiceMenus/UbuntuOne/
cp * "$spath"ServiceMenus/UbuntuOne/
kdesudo apt-get install ruby ubuntuone-control-panel-qt
