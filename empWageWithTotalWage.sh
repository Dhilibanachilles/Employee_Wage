#!/bin/bash -x

empRatePerHr=20
isFullTime=1
isPartTime=2
salary=0
totalWage=0
for ((  i=0; i<20; i++ ))
do
	empCheck=$(( RANDOM%3 ))
	if [[  $empCheck -eq 1 ]]
	then
			workHrs=12
   elif [[ $empCheck -eq 2 ]]
	then
			workHrs=8	
   else
			workHrs=0
	fi
salary=$(( $workHrs*$empRatePerHr ))
dailyWage[i]=$salary
totalWage=$(( $totalWage + $salary ))

done

echo "Daily Wage :: " ${dailyWage[@]}
echo "Total Wage :: " ${totalWage}
