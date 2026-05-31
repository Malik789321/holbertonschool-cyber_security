#!/bin/bash

hashcat -a 1 --stdout "$1" "$2" > combined.txt
cat combined.txt
