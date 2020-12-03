#!/bin/bash
#PBS -P xf3
#PBS -q normal
#PBS -l walltime=24:00:00
#PBS -l ncpus=2
#PBS -l mem=2GB
#PBS -l jobfs=1GB
#PBS -l wd
#PBS -l storage=scratch/xf3

source /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/gadimod.sh

conda activate snakemake

set -ueo pipefail
logdir=gadi/log
mkdir -p $logdir
mkdir -p data/log/
export TMPDIR=${PBS_JOBFS:-$TMPDIR}
TARGET=${TARGET:-all}

QSUB="qsub -q {cluster.queue} -l ncpus={cluster.threads} -l jobfs={cluster.jobfs}"
QSUB="$QSUB -l walltime={cluster.time} -l mem={cluster.mem} -N {cluster.name} -l storage=scratch/xf3"
QSUB="$QSUB -l wd -j oe -o $logdir -P {cluster.project}"

snakemake                                                          \
    -j 1000                                                        \
    --max-jobs-per-second 2                                        \
    --cluster-config /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/cluster.yaml                             \
    --local-cores ${PBS_NCPUS:-1}                                  \
    --js /home/800/bxs800/scripts/snakemake/recepies/RNAseqTrinity/jobscript.sh                                         \
    --nolock                                                       \
    --rerun-incomplete                                             \
    --keep-going                                                   \
    --cluster "$QSUB"                                              \
    "$TARGET"                                                      

