#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
rm -rf $SCRIPT_DIR/venv
rm -rf $SCRIPT_DIR/../build
rm -f $SCRIPT_DIR/../src/mp2hudcolor_wrapper.c
rm -f $SCRIPT_DIR/../*.so
