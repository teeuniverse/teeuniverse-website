#!/bin/sh

TUPINFO_BIN=~/Projects/teeuniverses/master-build/build/release/linux/tupinfo
TMPFILE=tmp.txt

mkdir -p _packages
for TUP in $(find packages/ -name \*.tup | sed -r 's/.*\/(.*).tup/\1/'); do
	MDFILE=_packages/$TUP.md

	$TUPINFO_BIN packages/$TUP.tup > $TMPFILE
	AUTHOR=$(cat $TMPFILE | grep "Author:" | sed -r 's/Author: //' )
	CREDITS=$(cat $TMPFILE | grep "Credits:" | sed -r 's/Credits: //' )
	LICENSE=$(cat $TMPFILE | grep "License:" | sed -r 's/License: //' )
	VERSION=$(cat $TMPFILE | grep "Version:" | sed -r 's/Version: //' )
	
	CATEGORY=$(echo $TUP | sed -r 's/_.*//' )

	echo "---" > $MDFILE
	echo "layout: tup" >> $MDFILE
	echo "title: $TUP" >> $MDFILE
	echo "type: dataset" >> $MDFILE
	echo "" >> $MDFILE
	echo "tup_author: $AUTHOR" >> $MDFILE
	echo "tup_credits: $CREDITS" >> $MDFILE
	echo "tup_license: $LICENSE" >> $MDFILE
	echo "tup_version: $VERSION" >> $MDFILE
	echo "" >> $MDFILE
	echo "category: $CATEGORY" >> $MDFILE
	echo "---" >> $MDFILE
done

rm $TMPFILE

