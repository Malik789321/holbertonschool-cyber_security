#!/bin/bash

domain=$1

subfinder -silent -d "$domain" | while read sub; do
    ip=$(dig +short "$sub" | head -n 1)
    echo "$sub,$ip"
done > "$domain.txt"
