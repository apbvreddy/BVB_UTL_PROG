#!/bin/bash
OP="$1_Kmerginie_out"
[[ -d $OP ]] || mkdir $OP
printf "\n003_kmerginie.sh START TIME: " > $OP/kmerginie_run.log
TZ=EST date >> $OP/kmerginie_run.log
#
/home/ec2-user/apps/kmergenie/specialk $1_Trimm_out/trimmed_fastq_list.txt \
	-o $OP/Specialk_out \
	-t 50 &>> $OP/kmerginie_run.log
#
/home/ec2-user/apps/kmergenie/scripts/decide $OP/Specialk_out &>> $OP/kmerginie_run.log
printf "\n003_kmerginie.sh END TIME: " >> $OP/kmerginie_run.log
TZ=EST date >> $OP/kmerginie_run.log
exit
