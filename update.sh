#!/bin/bash

set -e
cd "$(dirname "$0")"
dpkg-scanpackages -m ./debs > ./Packages
bzip2 -fks ./Packages

echo "生成完成！"
