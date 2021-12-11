#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
rm -rf $SCRIPT_DIR/venv
rm -rf $SCRIPT_DIR/../build
rm -rf $SCRIPT_DIR/../dist
rm -rf $SCRIPT_DIR/../wheelhouse
rm -f $SCRIPT_DIR/../src/mp2hudcolor_wrapper.c
rm -f $SCRIPT_DIR/../*.so
rm -f $SCRIPT_DIR/../*.egg-info
