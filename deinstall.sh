#!/bin/sh

# Copyright (c) 2012 Shane Quigley
# 
# This software is MIT licensed see link for details
# http://www.opensource.org/licenses/MIT

path="$(kde4-config --path services)"
spath="$(echo ${path%:*})"
rm -rf "$spath"ServiceMenus/UbuntuOne/
rm -rf "$spath"ServiceMenus/Ubuntu\ One/
