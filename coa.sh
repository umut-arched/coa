#!/bin/bash
var1=$1
var2=$2
if [ -z "$var2" ]
then
      echo "invalid project name!"
else
	if [ "$var1" = "react" ]; then
		echo creating $var1 project named $var2
		unzip ./coa/templates/react.zip -d $var2 > /dev/null 2>&1
		cd $var2
		npm rebuild
		echo finished creating $var2

	elif [[ "$var1" = "vue" ]]; then
		echo creating $var1 project named $var2
		unzip ./coa/templates/vue.zip -d $var2 > /dev/null 2>&1
		cd $var2
		npm rebuild
		echo finished creating $var2

	elif [[ "$var1" = "angular" ]]; then
		echo creating $var1 project named $var2
		#echo $(pwd)/coa/templates
		unzip ./coa/templates/angular.zip -d $var2 > /dev/null 2>&1
		cd $var2
		npm rebuild
		echo finished creating $var2	
	else
		echo invalid framework name!
	fi
fi
