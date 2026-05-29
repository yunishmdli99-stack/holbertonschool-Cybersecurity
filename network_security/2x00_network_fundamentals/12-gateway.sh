#!/bin/bash
ip route show default | grep -oP '(?<=via )\d+\.\d+\.\d+\.\d+'
