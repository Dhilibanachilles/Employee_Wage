#!/bin/bash -x

empRatePerHr=20
isFullTIme=1
isPartTime=2
totalWorkHrs=0

function workHrs() {
for (( i=0; i<20; i++ ))
do
		empCheck=$(( RANDOM%3 ))
if [[ $totalWorkHrs -ne 100 ]]
then
	if [[ $empCheck -eq 1 ]]
	then
			workHrs=12
			echo "Employee is Full Time"
	elif [[ $empCheck -eq 2 ]]
	then
			workHrs=8
			echo "Employee is Part Time"
	else
			workHrs=0
			echo "Employee is Absent"
	fi
else
break
fi
salary=$(( $workHrs*$empRatePerHr ))
totalSalary=$(( $totalSalary+$salary ))
totalWorkHrs=$(( $workHrs+$totalWorkHrs ))
done
echo $totalWorkHrs
}
workHrs
