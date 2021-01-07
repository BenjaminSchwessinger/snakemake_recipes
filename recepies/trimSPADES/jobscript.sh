#!/bin/bash

source /home/800/bxs800/scripts/snakemake/recepies/trimSPADES/gadimod.sh

useconda
conda activate SoilCarbon

module load java openmpi/4.0.3

export TMPDIR=$PBS_JOBFS
export OMP_NUM_THREADS=16

set -ueo pipefail
{exec_job}
