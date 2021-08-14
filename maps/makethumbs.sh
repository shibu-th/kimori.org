#!/bin/bash


thumbwidth="460"
suffix="-thumb.png"
suffixl="${#suffix}"
dist="-${suffixl}"
for x in *.png; do
     len="${#x}"
     if [ $len -gt $suffixl ]; then
   			 fsuffix="${x: $dist}"
   			 if [ "$fsuffix"  != "$suffix" ]; then
				 		printf '%s\n' "Processing $x"
   						convert -thumbnail x${thumbwidth} "$x" "$x$suffix";
   			 fi


     fi

done




###main() {
###revnam="" 
###   for x in *.png; do
###   	  revnam="$(revstr ${x})"
###   	  echo lastchars:
###   	  echo ${revnam: -4}
###   done
###}
###
###revstr() { 
###   x="$@"
###   len="$(printf '%s' "${#x}")"
###   while [ $len -ne 0 ]
###   do
###           y=$y`echo $x | cut -c $len`
###   	        ((len--))
###   	done
###   	printf '%s' "$y"
###   
###}
###
###main