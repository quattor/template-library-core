#!/bin/bash

# compile all profiles in ./compile and compare the generated xml
# with the one in compile_result

# number of expected tests
expected_tests=3

# readlink for absolute path
here=`dirname $(readlink -f $0)`
base=`dirname $here`

build_temp=$here/build_temp_compile
rm -Rf $build_temp

testdir=$here/compile
resultdir=$here/compile_result

totaltests=0

for templ in `find $testdir -type f -name '*pan'`; do
    rm -Rf $build_temp
    relpath=`dirname $templ | sed "s#$testdir##"`
    mkdir -p $build_temp/$relpath
    
    # try to compile it
    output=`panc --output-dir $build_temp/$relpath --include-path $base:$testdir/$relpath $templ 2>&1`
    ec=$?
    if [ $ec -gt 0 ]; then
        echo "Test $templ compilation failed: $output"
        exit $ec
    fi

    res_xml=`basename ${templ%.pan}.xml`
    output=`diff -u $build_temp/$relpath/$res_xml $resultdir/$relpath/$res_xml`
    ec=$?
    if [ $ec -gt 0 ]; then
        echo "[ERROR] Test $templ output difference: $output"
        exit $ec
    fi
    totaltests=$((totaltests+1))
done

if [ $totaltests -ne $expected_tests ]; then
    echo "[ERROR] Got $totaltests, expected $expected_tests tests"
    exit 1
fi

rm -Rf $build_temp

echo "[OK]: compile tests completed $totaltests tests"

exit 0
