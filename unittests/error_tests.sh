#!/bin/bash

# compile all profiles in ./errors; all compilations must fail with
#     user initiated error (i.e. error(xyz)
#     evaluation error from a pan builtin function

# number of expected tests
expected_tests=5

# readlink for absolute path
here=`dirname $(readlink -f $0)`
base=`dirname $here`

build_temp=$here/build_temp_error
rm -Rf $build_temp

testdir=$here/errors

totaltests=0

for templ in `find $testdir -type f -name '*pan'`; do
    rm -Rf $build_temp
    relpath=`dirname $templ | sed "s#$testdir##"`
    mkdir -p $build_temp/$relpath
    
    # try to compile it
    output=`panc --output-dir $build_temp/$relpath --include-path $base:$testdir/$relpath $templ 2>&1`
    ec=$?
    if [ $ec -eq 0 ]; then
        echo "[ERROR] Test $templ compilation succesful, expected error: $output"
        exit 1
    fi

    grep_out=`echo $output | grep -E '(user-initiated|evaluation) error'`
    ec=$?
    if [ $ec -gt 0 ]; then
        echo "[ERROR] Test $templ error not user initiated: $output"
        exit $ec
    fi
    
    totaltests=$((totaltests+1))
done

if [ $totaltests -ne $expected_tests ]; then
    echo "[ERROR] Got $totaltests, expected $expected_tests tests"
    exit 1
fi

rm -Rf $build_temp

echo "[OK]: error tests completed $totaltests tests"

exit 0
