#!/bin/bash
git -C "$1" rev-parse --is-inside-work-tree 2>/dev/null && echo "󰳏 " || echo ""
