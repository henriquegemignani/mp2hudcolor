#!/bin/bash

set -e
set -x

echo "Adding $PYTHON_VERSION to path"
export PATH="/opt/python/${PYTHON_VERSION}/bin:$PATH"

python3.9 -m pip install auditwheel "setuptools>=44.0.0" "wheel>=0.34.2" "Cython>=0.29.21" "setuptools_scm[toml]>=3.4"
python3.9 setup.py bdist_wheel

python3.9 -m auditwheel repair --plat manylinux2010_x86_64 dist/*-linux_x86_64.whl -w dist
rm dist/*-linux_x86_64.whl

echo "Resulting files: "
ls -la dist/
