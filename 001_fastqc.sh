#!/bin/bash
FQC="$3_FastQC_out"
[[ -d "$FQC" ]] || mkdir $FQC
printf "\n001_fastqc.sh START TIME: " > $FQC/fastqc_run.log
TZ=EST date >> $FQC/fastqc_run.log
[[ -d "$FQC/TEMP" ]] || mkdir "$FQC/TEMP"
echo "/home/ec2-user/apps/FastQC/fastqc $1 $2 -o $FQC -t 9 -d $FQC/TEMP &>> $FQC/fastqc_run.log &"
#
/home/ec2-user/apps/FastQC/fastqc $1 $2 \
	-o $FQC \
	-t 9 \
	--extract \
	-d $FQC/TEMP &>> $FQC/fastqc_run.log
#
printf "\n001_fastqc.sh END TIME: " >> $FQC/fastqc_run.log
TZ=EST date >> $FQC/fastqc_run.log
