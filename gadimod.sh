module purge
export TMPDIR=${PBS_JOBFS:-/tmp}

alias qlogin='qsub -I -P xf3 -l walltime=4:00:00 -l ncpus=8 -l mem=192G -l jobfs=400G -l storage=scratch/xf3 -q express -l wd'
alias uqstat='qstat -u $USER'

function useconda() {
	                eval "$(/home/800/bxs800/miniconda3/bin/conda shell.zsh hook)"
			        }
useconda
conda activate snakemake

module load samtools bcftools/1.10.2 bwa java

#module load seqhax samtools bcftools bwa freebayes gatk
