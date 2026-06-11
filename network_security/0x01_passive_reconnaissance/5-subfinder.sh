#!/bin/bash
subfinder -silent -d "$1" | awk '{cmd="dig +short " $0; cmd | getline ip; close(cmd); print $0","ip}' > "$1.txt"
