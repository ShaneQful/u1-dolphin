#!/bin/sh

path="$(kde4-config --path services)"
spath="$(echo ${path%:*})"
mkdir -p "$spath"ServiceMenus/Ubuntu\ One/
cp * "$spath"ServiceMenus/Ubuntu\ One/
kdesudo apt-get install ruby ubuntuone-control-panel-qt