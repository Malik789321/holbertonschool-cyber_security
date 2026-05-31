#!/bin/bash
john "$1" --format=nt --wordlist=/usr/share/wordlists/rockyou.txt >/dev/null 2>&1 && john --show --format=nt "$1" | awk -F: 'NR==1{print $2}' > 5-password.txt
