#!/bin/bash

# readlink for absolute path
here=`dirname $(readlink -f $0)`

build_temp=$here/build_temp
testdir=$here/test
resultdir=$here/result

cd $testdir

for templ in `find . -type f -name '*pan'`; do
    rm -Rf $build_temp
    mkdir -p $build_temp
    
    # try to compile it
    output=`panc --output-dir $build_temp --include-path $here/..:. $templ 2>&1`
    ec=$?
    if [ $ec -gt 0 ]; then
        echo "Test $testdir/$templ compilation failed: $output"
        exit $ec
    fi

    res_xml=${templ%.pan}.xml
    output=`diff -u $build_temp/$res_xml $resultdir/$res_xml`
    ec=$?
    if [ $ec -gt 0 ]; then
        echo "Test $testdir/$templ output difference: $output"
        exit $ec
    fi
done

exit 0

