python /home/ec2-user/apps/spades/bin/spades.py -o spades_output04 \
	-1 $1 -2 $2 \
	--careful \
	--cov-cutoff auto \
	-t 9 -m 800 \
	-k 51,71,91,101 \
	--tmp-dir TEMP &> spades_run04.log
