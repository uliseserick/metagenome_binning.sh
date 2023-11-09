#!/bin/bash

# this script run the binner metabat2 (Kang et al., 2019) over multiple metagenome assemblies



cd /path/to/scaffolds


mamba activate /srv/home/urodriguez/miniconda3/envs/metabat

for i in *_scaffolds.fasta; do

n=${i%%_scaffolds.fasta} 

runMetaBat.sh -m 2500 ${n}_scaffolds.fasta ${n}.bam
 
done
