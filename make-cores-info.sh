#!/bin/sh -e

SELF_LIST=`ls *.SELF | sort`
rm -f out.txt
for SELF in $SELF_LIST; do
	TXT=''
	AA=`date -r $SELF +%Y-%m-%d`
	CC=`rhash --simple $SELF`
	TXT+="$AA $CC.zip"
	echo $TXT >> out.txt
	7z a -tzip $SELF.zip $SELF
done