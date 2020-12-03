#!/bin/bash

source /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/gadimod.sh

export TMPDIR=$PBS_JOBFS


set -ueo pipefail
 cd /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity && \
/home/800/bxs800/miniconda3/envs/snakemake/bin/python3.8 \
-m snakemake /scratch/xf3/bxs800/analysis/Pst198E16_v1/RNAseq/../trinityGG/combined//trinity/Pst198E16_v1.Trinity-GG.runcombined.fasta --snakefile /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/snakefile \
--force -j --keep-target-files --keep-remote \
--wait-for-files /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/.snakemake/tmp.4sd5o8bg /scratch/xf3/bxs800/analysis/Pst198E16_v1/RNAseq/combined/Pst198E16_v1.combined.sorted.bam --latency-wait 5 \
 --attempt 1 --force-use-threads \
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
   --allowed-rules combinedTrinityGG --nocolor --notemp --no-hooks --nolock \
--mode 2  && touch /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/.snakemake/tmp.4sd5o8bg/47.jobfinished || (touch /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/.snakemake/tmp.4sd5o8bg/47.jobfailed; exit 1)

