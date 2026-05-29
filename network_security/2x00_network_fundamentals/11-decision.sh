#!/bin/bash
ip route get "$1" | grep -qP 'via' && echo REMOTE || echo LOCAL
