#!/bin/bash
echo "$1" | tr '.' '\n' | while read octet; do
    printf '%08d' "$(echo "obase=2; $octet" | bc)"
done | sed 's/.\{8\}/&./g;s/\.$/\n/'

