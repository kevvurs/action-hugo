#!/bin/sh -l
sh -c "git submodule update --init --recursive"
sh -c "/go/bin/hugo $*"
