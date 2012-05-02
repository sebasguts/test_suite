#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## D-Modules
cd D-Modules/examples/

echo "QUIT;" > quit.g

for i in \
Localized_Reiffen.g \
; do
    echo -e "\n"
    echo "========================="
    echo $i "(D-Modules)"
    echo "========================="
    gap -T $i quit.g
done

rm quit.g

cd ../..
