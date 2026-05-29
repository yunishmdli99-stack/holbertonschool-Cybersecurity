#!/bin/bash
netstat -rn | grep -E '^0\.0\.0\.0' | awk '{print $2}'
