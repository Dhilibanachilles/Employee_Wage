#!/bin/bash -x

empRatePerHr=20
isFullTime=1
isPartTime=2
for (( i=0; i<20; i++ ))
do
	empCheck=$(( RANDOM%3 ))
if [ $empCheck -eq 1 ]
then
	empHrs=12
	echo "Employee is Full Time"
elif [ $empCheck -eq 2 ]
then
	empHrs=8
	echo "Employee is Part Time"
else
	empHrs=0
	echo "Employee is Absent"
fi
salary=$(( $empHrs*$empRatePerHr ))
totalSalary=$(( $totalSalary+$salary ))
done

