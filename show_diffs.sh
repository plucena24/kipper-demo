#!/bin/bash
#
# Display all diffs
#
SEP="========================================================"
find /tmp/ansible/diffs/ -name "*.diff" -exec echo \; -exec echo ${SEP} \; -exec echo {} \; -exec cat {} \;
