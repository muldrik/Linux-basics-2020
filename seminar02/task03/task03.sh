#!/bin/bash
ps aux | grep 'tail -f /dev/null' | cut -d' ' -f5 | head -n 1 | xargs kill
