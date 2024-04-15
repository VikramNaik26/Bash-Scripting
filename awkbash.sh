#!/usr/bin/bash

awk '{print $1}' textfile.txt
awk '{print $2}' textfile.txt

awk -F, '{print $1}' csvfile.csv

