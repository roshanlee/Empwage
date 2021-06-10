#!/bin/bash -x

IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=10
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

totalEmpHr=0
totalWorkingDays=0
declare -A empDailyWage

function getWorkingHours(){
    case $1 in
      $IS_FULL_TIME)
         empHrs=8
      ;;
      $IS_PART_TIME)
         empHrs=4
      ;;
      *)
         empHrs=0
      ;;
   esac
   echo $empHrs
}
function calculateWage() {
        workHours=$1
        wage=$(($EMP_RATE_PER_HR*$workHours))
        echo $wage
}


while(($totalEmpHr<$MAX_HRS_IN_MONTH && $totalWorkingDays<$NUM_WORKING_DAYS))
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%2))
   workHours="$(getWorkingHours $empCheck)"
   totalEmpHr=$(($totalEmpHr*$workHours))
   empDailyWage[$totalWorkingDays]="$(calculateWage $workHours)"
done

wage=$(($totalEmpHr*$EMP_RATE_PER_HR))
echo "Employee daily wage " ${empDailyWage[@]}
echo "DAy :: " ${!empDailyWage[@]}


