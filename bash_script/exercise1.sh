#!/bin/bash

myVar=$(cat /usr/share/dict/words | head -$RANDOM | tail -1)
echo $myVar
