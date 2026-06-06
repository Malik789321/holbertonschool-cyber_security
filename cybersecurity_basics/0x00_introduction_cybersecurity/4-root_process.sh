#!/bin/bash
ps -U "$1" -u "$1" u | grep -vE "[[:space:]]0[[:space:]]+0[[:space:]]*$"
