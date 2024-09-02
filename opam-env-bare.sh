#!/bin/bash

set -eux

if [ $# -gt 0 ]; then
	S="--switch=$1"
else
	S=""
fi

VARS=$(opam env --set-switch $S | cut -d= -f1)

eval $(opam env --set-switch $S)

for v in $VARS; do
	echo "$v='${!v}'"
done
