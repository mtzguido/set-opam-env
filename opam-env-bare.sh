#!/bin/bash

set -eux

S="$1"

VARS=$(opam env $S | cut -d= -f1)

eval $(opam env $S)

for v in $VARS; do
	echo "$v='${!v}'"
done
