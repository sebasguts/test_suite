#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## GradedModules
cd GradedModules/examples/

cd maple

for i in \
MainExample.g \
; do
    cp -u ../$i .
    update_from_directory_one_level_up
done

for i in \
HilbertPolynomial.g \
Purity.g \
FilteredByPurity.g \
P1.g \
Schenck-3.2.g \
Schenck-8.3.g \
Schenck-8.3.3.g \
NonCohenMacaulayMonomialIdeal.g \
VectorBundleOnP1_Example5.1.g \
; do
    echo -e "\n"
    echo "========================="
    echo maple/$i "(GradedModules)"
    echo "========================="
    update_from_directory_one_level_up
    gap $i < /dev/null
done

cd ../../..
