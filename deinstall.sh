#!/bin/sh

path="$(kde4-config --path services)"
spath="$(echo ${path%:*})"
rm -rf "$spath"ServiceMenus/Ubuntu\ One/