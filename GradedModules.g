#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## GradedModules
cd GradedModules/examples/

echo "QUIT;" > quit.g

## Singular
for i in \
HilbertPolynomial.g \
Purity.g \
FilteredByPurity.g \
Triangle.g \
Complexes.g \
GlobalSections.g \
P1.g \
Schenck-3.2.g \
Schenck-8.3.g \
Schenck-8.3.3.g \
NonCohenMacaulayMonomialIdeal.g \
VectorBundleOnP1_Example5.1.g \
VectorBundleOnP1_Example5.2.g \
; do
    echo -e "\n"
    echo "========================="
    echo $i "(GradedModules)"
    echo "========================="
    gap -T $i quit.g
done

rm quit.g

## MAGMA
cd MAGMA

echo "QUIT;" > quit.g

for i in \
HilbertPolynomial.g \
Purity.g \
FilteredByPurity.g \
Triangle.g \
Complexes.g \
GlobalSections.g \
P1.g \
Schenck-3.2.g \
Schenck-8.3.g \
Schenck-8.3.3.g \
NonCohenMacaulayMonomialIdeal.g \
; do
    echo -e "\n"
    echo "========================="
    echo MAGMA/$i "(GradedModules)"
    echo "========================="
    update_from_directory_one_level_up
    gap -T $i quit.g
done

rm quit.g

cd ../

## Macaulay2
cd Macaulay2

echo "QUIT;" > quit.g

for i in \
HilbertPolynomial.g \
Purity.g \
FilteredByPurity.g \
Triangle.g \
Complexes.g \
GlobalSections.g \
P1.g \
Schenck-3.2.g \
Schenck-8.3.g \
Schenck-8.3.3.g \
NonCohenMacaulayMonomialIdeal.g \
VectorBundleOnP1_Example5.1.g \
; do
    echo -e "\n"
    echo "========================="
    echo Macaulay2/$i "(GradedModules)"
    echo "========================="
    update_from_directory_one_level_up
    gap -T $i quit.g
done

rm quit.g

cd ../

## Maple
cd maple

echo "QUIT;" > quit.g

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

rm quit.g

cd ../

## END

cd ../..
