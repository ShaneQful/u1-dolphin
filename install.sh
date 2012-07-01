#!/bin/sh

path="$(kde4-config --path services)"
spath="$(echo ${path%:*})"
kdesudo apt-get install ruby ubuntuone-control-panel-qt
mkdir -p "$spath"ServiceMenus/Ubuntu\ One/
cp * "$spath"ServiceMenus/Ubuntu\ One/