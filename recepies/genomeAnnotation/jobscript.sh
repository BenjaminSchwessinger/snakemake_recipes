#!/bin/bash

source /home/800/bxs800/scripts/snakemake/recepies/genomeAnnotation/gadimod.sh

useconda
conda activate funannotate

export TMPDIR=$PBS_JOBFS
export OMP_NUM_THREADS=32

set -ueo pipefail
{exec_job}
