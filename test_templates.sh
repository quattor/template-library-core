#!/bin/bash

here=`dirname $(readlink -f $0)`

echo "Test: building all templates"
$here/unittests/build_all_templates.sh
if [ $? -gt 0 ]; then
    echo "ERROR: failed build_all_templates"
    exit $?
fi

echo "Test: compile tests"
$here/unittests/compile_tests.sh
if [ $? -gt 0 ]; then
    echo "ERROR: failed compile_tests"
    exit $?
fi

exit 0
