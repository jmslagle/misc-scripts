#!/bin/sh

for i in `find . -maxdepth 1 -type d`; do pushd $i>/dev/null; if [ -d .git ]; then echo -n $i ": "; git rev-parse --abbrev-ref HEAD; fi; popd >/dev/null; done
