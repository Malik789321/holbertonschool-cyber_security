#!/bin/bash
john "$1" --wordlist=/usr/share/wordlists/rockyou.txt >/dev/null 2>&1 && john --show "$1" | awk -F: 'NR==1{print $2}' > 6-password.txt
