#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
ZIP_FILE=sensation_4.5.4.zip
 
if [ $2 = "out/framework" ];then
	echo "delete framework redundance files"
	rm -rf "out/framework/smali/com/android/internal/telephony"

	echo "make framework-miui.jar"
	mkdir -p "out/framework-miui/smali"
	touch "out/framework-miui/apktool.yml"
	echo "version: 1.4.3" >> "out/framework-miui/apktool.yml"
	echo "apkFileName: framework-miui.jar" >> "out/framework-miui/apktool.yml"
	mv "out/framework/smali/miui" "out/framework-miui/smali"
	$APKTOOL b "out/framework-miui" "out/framework-miui.jar"
	mkdir -p "out/ZIP/system/framework"
	cp "out/framework-miui.jar" "out/ZIP/system/framework/framework-miui.jar"
	
	echo "make framework2.jar"
	cp -r "framework2.jar.out" "out/framework2.jar.out" 

	for file in `find "$1/smali/com/android/internal/telephony" -name "*.smali"`
	do
        	newfile=${file/$1/"out/framework2.jar.out"}
        	if [ ! -f "$newfile" ]
        	then
        	        mkdir -p `dirname $newfile`
        	        echo "add widget smali from miui: $file"
        	        cp $file $newfile
       		fi
	done
	$APKTOOL b  "out/framework2.jar.out" "out/framework2.jar"
	cp "out/framework2.jar" "out/ZIP/system/framework/framework2.jar"
	
elif [ $2 = "out/android.policy" ];then
    curdir=`pwd`
    cd overlay/android.policy.jar.out
    for file in `find . -name *.smali`
    do
        dstfile="$curdir/out/android.policy/$file"
        cat $file >> $dstfile
    done
    cd -
fi
