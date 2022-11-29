#!/bin/bash
var1=$1
var2=$2
script_path=$(dirname "$0")

setupFolder() {
	local framework=$1
	local name=$2
	echo creating $framework project named $name
	unzip $script_path/templates/$framework -d $name > /dev/null 2>&1
	cd $name
	npm rebuild
	echo finished setting up new $framework project named $name
}

if [ -z "$var2" ]
then
      echo "invalid project name!"
else
	if [[ "$var1" = "react" ]]; then
		setupFolder $var1 $var2	
	elif [[ "$var1" = "vue" ]]; then
		setupFolder $var1 $var2	
	elif [[ "$var1" = "angular" ]]; then
		setupFolder $var1 $var2
	else
		echo invalid framework name!
	fi
fi
