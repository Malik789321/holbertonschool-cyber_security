#!/bin/bash
openssl rand -hex 8 | xargs -I{} echo -n "$1{}" | openssl dgst -sha512 > 3_hash.txt
