#!/bin/bash

set -e
clear
cd "$(dirname "$0")"
dpkg-scanpackages -m ./debs > ./Packages
bzip2 -fks ./Packages
cd debs; find . -name '.DS_Store' -type f -delete
cd ../; find . -name '.DS_Store' -type f -delete

echo "生成完成！"
