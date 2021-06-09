#!/bin/bash -x

IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=10
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

totalEmpHr=0
totalWorkingDays=0


while(($totalEmpHr<$MAX_HRS_IN_MONTH && $totalWorkingDays<$NUM_WORKING_DAYS))
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
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
	totalEmpHr=$(($totalEmpHr*$empHrs))
done

totalSalary=$(($totalEmpHr*$EMPRATE_PER_HR))
