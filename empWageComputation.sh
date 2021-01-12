#!/bin/bash -x

#constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
FULL_TIME=12
PART_TIME=8

#variable
empCheck=$(( RANDOM%3 ))
dailyWage=0

if [ $empCheck -eq $IS_PRESENT_FULL_TIME ]
then
	echo "Employee is present Full TIme"
	dailyWage=$(( $EMP_RATE_PER_HR*$FULL_TIME ))
elif [ $empCheck -eq $IS_PRESENT_PART_TIME ]
then
	echo "Employee is present Part Time"
	dailyWage=$(( $EMP_RATE_PER_HR*$PART_TIME ))
else
	echo "Employee is absent"
fi
