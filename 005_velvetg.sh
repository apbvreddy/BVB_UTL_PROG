#!/bin/bash
OP="$1_Velvet_out"
printf "\n005_velvetg.sh START TIME: " > $OP/velvetg_run.log
TZ=EST date >> $OP/velvetg_run.log
#
/home/ec2-user/apps/velvet/velvetg $OP \
	-cov_cutoff 1 \
	-exp_cov auto \
	-ins_length 110 \
	-read_trkg yes \
	-amos_file yes \
	-scaffolding yes &>> $OP/velvetg_run.log
printf "\n005_velvetg.sh END TIME: " >> $OP/velvetg_run.log
TZ=EST date >> $OP/velvetg_run.log
exit
