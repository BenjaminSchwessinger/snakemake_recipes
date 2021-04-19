#!/bin/bash

source /home/800/bxs800/scripts/snakemake/recepies/genomeAnnotation/gadimod.sh

useconda
conda activate funannotate

export PERL5LIB=/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/site_perl/5.26.2/x86_64-linux-thread-multi:/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/site_perl/5.26.2:/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/5.26.2/x86_64-linux-thread-multi:/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/5.26.2:.

export TMPDIR=$PBS_JOBFS
export OMP_NUM_THREADS=32

set -ueo pipefail
{exec_job}
