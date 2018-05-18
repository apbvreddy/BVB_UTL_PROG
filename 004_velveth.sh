#!/bin/bash 
OP="$1_Velvet_out"
[[ -d $OP ]] || mkdir $OP
printf "\n004_velveth.sh START TIME: " > $OP/velveth_run.log
TZ=EST date >> $OP/velveth_run.log
#
/home/ec2-user/apps/velvet/velveth $OP $2 \
	-shortPaired \
	-create_binary \
	-fastq $3 $4 $5 $6 &>> $OP/velveth_run.log 
 printf "\n004_velveth.sh END TIME: " >> $OP/velveth_run.log
 TZ=EST date >> $OP/velveth_run.log
 exit
