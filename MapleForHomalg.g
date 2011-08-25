#!/bin/bash

. $(dirname $0)/init_homalg-project_test_suite

cd $PKG_PATH

. ./MapleForHomalg/bin/LibraryPath.sh

## MapleForHomalg
cd MapleForHomalg/examples/

for i in \
A3_Purity.g \
; do
    echo -e "\n"
    echo "========================="
    echo $i "(MapleForHomalg)"
    echo "========================="
    gapL $i < /dev/null
done

cd ../..