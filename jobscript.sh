#!/bin/bash

source /home/800/bxs800/scripts/snakemake/gadimod.sh

export TMPDIR=$PBS_JOBFS


set -ueo pipefail
{exec_job}
