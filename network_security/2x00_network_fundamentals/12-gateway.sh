#!/bin/bash
ip route show default | grep default | awk '{print $3}'
