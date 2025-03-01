#! /bin/sh

if [ -z $1 ]; then
  echo usage: $0 load_domain
  exit 1
fi

set -e -x 

MD5=`md5 -qs "$1"  | head -c 8`

if [ -z $MD5 ]; then 
  echo md5 did not work as expected
  exit 1
fi

cp favicon-16.png ood_$MD5.png
ls -l ood_$MD5.png

