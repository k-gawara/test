#!/bin/bash

files=$(ls)
for f in $files
do
	wc -l $f
done
