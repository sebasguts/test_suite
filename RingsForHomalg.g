#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## RingsForHomalg
cd RingsForHomalg/examples/

echo "QUIT;" > quit.g

echo -e "\n"
echo "========================="
echo RingsForHomalg
echo "========================="

echo RingsForHomalg/examples/all.g
gap -T all.g quit.g
echo RingsForHomalg/examples/convert.g
gap -T convert.g quit.g

rm quit.g

cd ../..
