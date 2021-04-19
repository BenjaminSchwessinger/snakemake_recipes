module purge
export TMPDIR=${PBS_JOBFS:-/tmp}

alias qlogin='qsub -I -P xf3 -l walltime=24:00:00 -l ncpus=8 -l mem=180G -l jobfs=250G -l storage=scratch/xf3+scratch/be39+gdata/be39+gdata/xf3 -q express -l wd'
alias uqstat='qstat -u $USER'

function useconda() {
	                eval "$(/g/data/xf3/bxs800/miniconda3/bin/conda shell.zsh hook)"
			        }
useconda
conda activate SoilCarbon

module load java openmpi/4.0.3

export OMP_NUM_THREADS=16

