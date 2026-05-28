#!/bin/bash
bits=$(printf '%*s' $1 | tr ' ' '1')$(printf '%*s' $((32-$1)) | tr ' ' '0'); for i in 0 1 2 3; do echo "obase=10;ibase=2;${bits:$((i*8)):8}" | bc; done | tr '\n' '.' | sed 's/\.$/\n/'
