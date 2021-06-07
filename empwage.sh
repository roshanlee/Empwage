#!/bin/bash -x

empCheck=$((RANDOM%2))
isPresent=1
if(($empCheck==$isPresent))
then
	echo Employee present
else
	echo Employee is absent
fi
