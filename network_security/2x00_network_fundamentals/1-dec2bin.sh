#!/bin/bash
echo "obase=2; $1" | bc | awk '{printf "%08d\n", $1}'
