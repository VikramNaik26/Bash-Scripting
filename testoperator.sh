#!/usr/bin/bash

[ hello = hello ]
echo $?
# here $? return exec code of previous exicution statement

[ 0 = 1 ]
echo $?

# eq is used only for numerical values
[ 1 -eq 1 ]
echo $?
