#!/bin/sh
# Determina servidor rápido de ftp para descargar OpenBSD.
# Dominio público. 2004. Sin garantías.


# Creates a string by concatenating $1, $2 times to $3 prints the result.
# Function from sources in the public domain: herram/confaux.sh of
# repasa:  http://structio.sourceforge.net/repasa
function _mkstr {
	if (test "$2" -lt "0") then {
		echo "Bug.  Times cannot be negative";
		exit 1;
	}
	elif (test "$2" = "0") then {
		echo $3;
	}
	else {
		_mkstr "$1" $(($2 -1)) "$3$1"
	} fi;
}


# Decides if the  number $1 (float or integer in base 10) is less than  
# $2 (also float or integer in base 10).
# Returns 0 if it is  or 1 otherwise.
# Function from sources in the public domain: herram/confaux.sh of
# repasa:  http://structio.sourceforge.net/repasa
function ltf {
	local n1=$1;
	local n2=$2;

# Add .0 to integers
	t=`echo $n1 | grep "[.]"`;
	if (test "$t" = "") then {
		n1="${n1}.0"
	} fi;
	t=`echo $n2 | grep "[.]"`;
	if (test "$t" = "") then {
		n2="${n2}.0"
	} fi;
		
# Multiply each number with an appropiate power of ten to 
# eliminate decimal part
	d1=`echo $n1 | sed -e "s/[0-9]*[.]\([0-9]*\)/\1/g"`;
	d2=`echo $n2 | sed -e "s/[0-9]*[.]\([0-9]*\)/\1/g"`

	nn1=`echo $n1 | sed -e "s/\([0-9]*\)[.]\([0-9]*\)/\1\2/g"`
	nn2=`echo $n2 | sed -e "s/\([0-9]*\)[.]\([0-9]*\)/\1\2/g"`

	t=`echo $((${#d1} < ${#d2}))`
	if (test "$t" = "1") then { 
		# n1 has less decimal digits
		nn1=`_mkstr "0" $((${#d2}-${#d1})) $nn1`
	} 
	else { 
		# n2 has less or the same amount of decimal digits than n1
		nn2=`_mkstr "0" $((${#d1}-${#d2})) $nn2`;
	}  fi;

	t=`echo $((${nn1} < ${nn2}))`;
	if (test "$t" = "1") then {
		return 0;
	}
	else {
		return 1;
	} fi;
}



if (test ! -f ftp.html) then {
	ftp http://www.openbsd.org/ftp.html
} fi;
l=`grep "ftp://" ftp.html | sed -e "s|.*ftp://\([-.A-Za-z0-9_]*\).*|\1|g" | sort -u`

echo $l;
min="X";
mejor="X";
echo "" > ftp-rank.txt
for i in $l; do
	echo -n "$i : ";
	v=`ping -c 3 -n $i | tail -n 1 | sed -e "s|.*=[^/]*/\([^/]*\)/.*|\1|g"` ; 
	echo $v;
	echo "$v $i" >> ftp-rank.txt
	bien=`echo $v | sed -e "s|^[0-9]*\.[0-9]*$|si|g"`
	if (test "$bien" = "si") then {
		if (test "$min" = "X") then {
			min="$v";
			mejor=$i;
		} elif (ltf "$v" "$min") then {
			min="$v";
			mejor=$i;
		} fi;
	} fi;
	echo "min=$min";
done;

echo "-------";
echo "Mejor: $mejor ($min)";
echo "Presione ENTER para ver escalafon";
read
grep -v "packet loss" ftp-rank.txt | sort -n
