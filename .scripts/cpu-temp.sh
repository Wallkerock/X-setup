#!/bin/bash

temp=$(sensors | grep -i 'Package id 0' | head -n1 | sed -r 's/.*:\s+[\+-]?(.*C)\s+.*/\1/')

printf ' %8s' "$temp"
