#!/bin/bash -x

empCheck=$((RANDOM%2))
isFullTime=2
isPartTime=1
empRatePerHr=20
case $empCheck in
	$isFullTime)
		empHrs=8
	;;
	$isPartTime)
		empHrs=4
	;;
	*)
		empHrs=0
	;;
esac
salary=$(($empHrs*$empRatePerHr))
