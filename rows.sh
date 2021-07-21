#!/usr/bin/env bash
if [[ $# == 3 ]]
then
	declare -i xp
	declare -i yp
	declare -i stp
	declare -i cntx
	declare -i cnty
	declare -i maxx
	declare -i maxy
	maxx="$1"
	maxy="$2"
	stp="$3";
	yp=1; 
	for cnty in $(eval echo {1..$maxy})
		do
		xp=1
		for cntx in $(eval echo {1..$maxx})
		do
			printf "%g\t%g\n" $xp $yp
			xp=$(( $xp + $stp ))
		done
		echo
		yp=$(( $yp + $stp ))
	done

else
	echo "usage: $0 <npointsx> <npointsy> <step>" >&2
fi
