#!/bin/bash
# Unzip all files in directory with filename as output dir.

for zip in *.zip
do
	dirname=`echo $zip | sed 's/\.zip$//'`
	unzip "$zip" -d "$dirname"
done
