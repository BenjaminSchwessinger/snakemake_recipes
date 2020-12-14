#!/bin/bash
#PBS -P be39
#PBS -q normal
#PBS -l walltime=04:00:00
#PBS -l ncpus=16
#PBS -l mem=50GB
#PBS -l jobfs=1GB
#PBS -l wd
#PBS -l storage=scratch/be39+gdata/be39

source /home/800/bxs800/.bashrc

conda activate /g/data/be39/bxs800/miniconda/SoilCarbon

ASSEMBLYDIR=/scratch/be39/bxs800/fungalgenomes/analysis/SPADES/DMTRCTR140/assembly

run_BUSCO.py -i ${ASSEMBLYDIR}/contigs.fasta  -l /g/data/be39/bxs800/db/busco/ascomycota_odb9 -o assembly -m genome -c 16
