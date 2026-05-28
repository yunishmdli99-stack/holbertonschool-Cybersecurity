#!/bin/bash
echo "$1" | tr '.' '\n' | while read o; do printf '%08d.' $(echo "obase=2;$o" | bc); done | sed 's/\.$//'; echo
