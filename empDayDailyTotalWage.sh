#!/bin/bash -x

empRatePerHr=20
isFullTime=1
salary=0
totalWage=0
k=1
for (( i=0; i<20; i++ ))
do
		empCheck=$(( RANDOM%3 ))
		if [[ $empCheck -eq 1 ]]
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
totalWage=$(( $totalWage+$salary ))

done
#echo "Daily Wage :: " ${dailyWage[@]}
#echo "Total Wage :: " ${totalWage}
#echo "Day :: " ${day[@]}
for (( i=0; i<20; i++ ))
do
echo "Daily Wage" ${dailyWage[i]}
echo "Day" $((k++))
done
echo "Total wage" ${totalWage}
#echo "Daily Wage" ${dailyWage[@]}
