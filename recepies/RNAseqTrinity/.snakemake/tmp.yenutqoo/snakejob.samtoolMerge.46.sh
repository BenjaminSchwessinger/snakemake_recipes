#!/bin/bash

source /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/gadimod.sh

export TMPDIR=$PBS_JOBFS


set -ueo pipefail
 cd /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity && \
/home/800/bxs800/miniconda3/envs/snakemake/bin/python3.8 \
-m snakemake /scratch/xf3/bxs800/analysis/Pst198E16_v1/RNAseq/combined/Pst198E16_v1.combined.sorted.bam --snakefile /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/snakefile \
--force -j --keep-target-files --keep-remote \
--wait-for-files /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/.snakemake/tmp.yenutqoo /scratch/xf3/bxs800/analysis/Pst198E16_v1/RNAseq/6D/Pst198E16_v1.6D.sorted.bam /scratch/xf3/bxs800/analysis/Pst198E16_v1/RNAseq/9D/Pst198E16_v1.9D.sorted.bam /scratch/xf3/bxs800/analysis/Pst198E16_v1/RNAseq/GS/Pst198E16_v1.GS.sorted.bam /scratch/xf3/bxs800/analysis/Pst198E16_v1/RNAseq/US/Pst198E16_v1.US.sorted.bam --latency-wait 5 \
 --attempt 1 --force-use-threads \
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
   --allowed-rules samtoolMerge --nocolor --notemp --no-hooks --nolock \
--mode 2  && touch /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/.snakemake/tmp.yenutqoo/46.jobfinished || (touch /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/.snakemake/tmp.yenutqoo/46.jobfailed; exit 1)

