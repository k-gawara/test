#!/bin/bash

#
# ttlファイルの一括置換
#

export LANG=C

flist=`find . -name \*.ttl`

for file in $flist
do
  backup=${file}.bak
  mv $file $backup
  cat $backup | sed -e "s/xxxx/yyyy/" > $file
  diff $backup $file
#  \rm -f $backup
done
