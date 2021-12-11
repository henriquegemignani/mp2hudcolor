#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
mkdir -p build
gcc $SCRIPT_DIR/../src/mp2hudcolor.c -o $SCRIPT_DIR/../build/mp2hudcolor
