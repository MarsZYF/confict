#########################################################################
# File Name: conflict.sh
# Author: ZYF
# mail: 1024952010@qq.com
# Created Time: 三  7/15 17:50:09 2017
#########################################################################
#!/bin/bash
projectfile=`find -d . -name 'project.pbxproj'`
projectdir=`echo *.xcodeproj`
projectfile="${projectdir}/project.pbxproj"
tempfile="${projectdir}/project.pbxproj.out"
savefile="${projectdir}/project.pbxproj.mergesave"

cat $projectfile | grep -v "<<<<<<< " | grep -v "=======" | grep -v "^>>>>>>> " > $tempfile
cp $projectfile $savefile
mv $tempfile $projectfile
