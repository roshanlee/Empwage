#!/bin/bash -x

empCheck=$((RANDOM%2))
isFullTime=2
isPartTime=1
empRatePerHr=20
if(($empCheck==$isFullTime))
then
	empHrs=8
elif(($isPartTime==$empCheck))
then
	empHrs=4
else
	empHrs=0
fi
salary=$(($empHrs*$empRatePerHr))
