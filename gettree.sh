#!/usr/bin/bash

ROOT='/api/'


func1()
{
	for i in $(curl -s "https://keras.io$1" | grep -o "$1[^/]\+/\"" | grep -o '[^"]\+' | sort | uniq); do
		echo $i
		func1 $i
	done
}

func1 $ROOT
