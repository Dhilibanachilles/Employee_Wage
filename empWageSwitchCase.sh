#!/bin/bash -x

#constant
EMP_RATE_PER_HR=20
IS_FULL_TIME=1
IS_PART_TIME=2
IS_ABSENT=0
#variable
empCheck=$(( RANDOM%3 ))

case $empCheck in 
		1)
				emphrs=12
				echo "Employee is present fulltime"
				;;
		2)
				emphrs=8
				echo "Employee is present parttime"
				;;
		*)
				emphrs=0
				echo "Employee is absent"
esac

salary=$(( $emphrs*$EMP_RATE_PER_HR ))
