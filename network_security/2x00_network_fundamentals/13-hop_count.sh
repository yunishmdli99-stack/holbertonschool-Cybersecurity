#!/bin/bash
traceroute -n "$1" | tail -n +2 | grep -v '* * *' | wc -l | tr -d ' '
