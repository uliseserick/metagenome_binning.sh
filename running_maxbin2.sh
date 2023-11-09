for i in *_scaffolds.fasta
do

n=${i%%_scaffolds.fasta}

run_MaxBin.pl -thread 24 -contig ${n}_scaffolds.fasta  -out ${n}_maxbin -abund ${n}_scaffolds.bam.abundance.txt

done 
