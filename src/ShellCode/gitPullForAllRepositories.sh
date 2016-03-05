#!/bin/bash
#
#   Description: Execute 'git pull' command for every .git repositories under one directory '/cygdrive/d/open-src'
#   How to use : Put all git repositories in directory '/cygdrive/d/open-src', 
#                and put this script under the directory and execute it. 

dir="/cygdrive/d/open-src"
ls $dir
arr=`ls ${dir}`

echo "ready for git pull"
echo "------------------cut here---------------"
for i in $arr
do
echo "find file="$i
  if [ -d $i ]
  then
    cd $i
    echo "L1 pwd ="$PWD
    git pull origin master
    cd ..
    echo "L2 pwd ="$PWD
  fi
done
echo "------------------cut here---------------"
