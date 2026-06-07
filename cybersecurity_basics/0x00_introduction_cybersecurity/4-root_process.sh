#!/bin/bash
ps aux | grep "^$1 " | grep -vE "[[:space:]]0[[:space:]]+0[[:space:]]"
