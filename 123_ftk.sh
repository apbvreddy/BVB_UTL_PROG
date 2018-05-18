../001_fastqc.sh $1 $2 $3 &
../002_trimmomatic.sh $1 $2 $3
../003_kmergenie.sh $3
exit;
