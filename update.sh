#!/bin/bash

clear

git add README.md
git add *.sh
git commit -m "zeno"
git push origin master

clear

echo "ZENO UPDATED!" | pv -qL 10
