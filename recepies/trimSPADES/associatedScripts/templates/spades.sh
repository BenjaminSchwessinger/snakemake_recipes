#!/bin/bash
#PBS -P be39
#PBS -q hugemembw
#PBS -l walltime=48:00:00
#PBS -l ncpus=28
#PBS -l mem=270GB
#PBS -l jobfs=1GB
#PBS -l wd
#PBS -l storage=scratch/be39


trimmedPath=/scratch/be39/bxs800/fungalgenomes/trimmeddata/DMTRCTR140

/home/800/bxs800/myapps/SPADES/3.14.1/SPAdes-3.14.1-Linux/bin/spades.py \
	--isolate -t 28 -o assembly \
	--pe1-1 ${trimmedPath}/DMTRCTR140_L001R1.trimmed.fastq.gz \
       --pe1-2 ${trimmedPath}/DMTRCTR140_L001R2.trimmed.fastq.gz	\
       --pe1-s ${trimmedPath}/DMTRCTR140_L001R3.trimmed.fastq.gz \
       --pe1-1 ${trimmedPath}/DMTRCTR140_L002R1.trimmed.fastq.gz \
       --pe1-2 ${trimmedPath}/DMTRCTR140_L002R2.trimmed.fastq.gz        \
       --pe1-s ${trimmedPath}/DMTRCTR140_L002R3.trimmed.fastq.gz
