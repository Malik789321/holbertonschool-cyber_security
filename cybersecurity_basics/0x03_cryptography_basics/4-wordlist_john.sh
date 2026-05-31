#!/bin/bash
john "$1" --wordlist=/usr/share/wordlists/rockyou.txt
john --show "$1" | grep -v ":" > 4-password.txt
