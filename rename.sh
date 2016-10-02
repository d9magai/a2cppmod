#!/bin/bash
set -eu
cd $(dirname $(readlink -f $0))
INPUT=$1
sed -i -e "s/hello/${INPUT}/g" Makefile mod_hello.cpp modules.mk
mv mod_hello.cpp "mod_$INPUT.cpp"

