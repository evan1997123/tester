#!/bin/bash
if [[ `git branch -a 2>&1` = *evanlovescodio* ]]; then
    echo "OK"
else
    echo "Sad reacts"
fi