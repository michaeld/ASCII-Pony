#!/bin/bash
index=0

files=`ls rendered/sh`

for f in $files
do
  ponies[$index]=$f
  let "index = index + 1"
done

mod=`expr $RANDOM % $index`

/bin/bash rendered/sh/${ponies[$mod]}