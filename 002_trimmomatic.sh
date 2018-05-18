#!/bin/bash
OP="$3_Trimm_out"
[[ -d $OP ]] || mkdir $OP
printf "\n002_trimmomatic.sh START TIME: " > $OP/trimmomatic_run.log
TZ=EST date >> $OP/trimmomatic_run.log
java -jar /home/ec2-user/apps/Trimmomatic/trimmomatic PE \
	-threads 20 \
	-trimlog $OP/trimmomatic.log \
	$1 $2 \
	$OP/opp_$1 $OP/opu_$1 $OP/opp_$2 $OP/opu_$2 \
	ILLUMINACLIP:/home/ec2-user/apps/Trimmomatic/trueSeq_adaptors.fa:2:30:10 \
	LEADING:7 TRAILING:7 SLIDINGWINDOW:4:15 MINLEN:100 \
	&>> $OP/trimmomatic_run.log
ls -1 $OP/op?_* > $OP/trimmed_fastq_list.txt
printf "\n002_trimmomatic.sh END TIME: " >> $OP/trimmomatic_run.log
TZ=EST date >> $OP/trimmomatic_run.log
exit
