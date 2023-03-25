#!/bin/bash

git add .
git commit -m "update | improve | fix"
git push

python3 mvrk.py --config ./demo_src/config.py --source_dir ./demo_src/ --build_dir ./tmp/

sed -i 's!2023 poly000!2023 poly000 | <a href="https://icp.gov.moe/?keyword=20230513" target="_blank">萌ICP备20230513号</a>!' tmp/index.html

rsync -rP --delete tmp/* ../poly000.github.io
cp google8812b0ec10b9d67f.html ../poly000.github.io
(cd ../poly000.github.io && git add . && git commit -m update  && git push)
