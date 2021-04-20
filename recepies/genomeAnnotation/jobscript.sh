#!/bin/bash

source /home/800/bxs800/scripts/snakemake/recepies/genomeAnnotation/gadimod.sh

useconda
conda deactivate
conda activate funannotate

#export PERL5LIB=/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/site_perl/5.26.2/x86_64-linux-thread-multi:/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/site_perl/5.26.2:/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/5.26.2/x86_64-linux-thread-multi:/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/5.26.2:.

#export PYTHONPATH=/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/python37.zip:/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/python3.7:/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/python3.7/lib-dynload:/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/python3.7/site-packages:.

#export R_LIBS=/g/data/xf3/bxs800/miniconda3/envs/funannotate/lib/R/library

export TMPDIR=$PBS_JOBFS
export OMP_NUM_THREADS=32

set -ueo pipefail
{exec_job}
