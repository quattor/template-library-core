#!/bin/bash

rm -Rf ./build_temp
git clean -fxd
mkdir -p build_temp/monitoring/lemon
echo "object template test;" > build_temp/test.pan
echo "declaration template monitoring/lemon/schema; type structure_monitoring = {};" > build_temp/monitoring/lemon/schema.pan
find pan -type f ! -regex '^./build_temp/.*' -name *.pan | xargs sed -n "s/^declaration[ ]\+template[ ]\+\(.*\);/include '\1';/p" >> build_temp/test.pan
find . -type f ! -regex '^./pan/.*' ! -regex '^./build_temp/.*' -name *.pan | xargs sed -n "s/^declaration[ ]\+template[ ]\+\(.*\);/include '\1';/p" >> build_temp/test.pan
find . -type f ! -regex '^./build_temp/.*' -name *.pan | xargs sed -n "s/^\(unique[ ]\+\)\?template[ ]\+\(.*\);/include '\2';/p" >> build_temp/test.pan
panc --output-dir build_temp --include-path .:build_temp build_temp/test.pan
