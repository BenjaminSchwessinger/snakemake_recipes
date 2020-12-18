module purge
export TMPDIR=${PBS_JOBFS:-/tmp}

alias qlogin='qsub -I -P be39 -l walltime=4:00:00 -l ncpus=8 -l mem=192G -l jobfs=50G -l storage=scratch/xf3+scratch/be39+gdata/be39 -q express -l wd'
alias uqstat='qstat -u $USER'

function useconda() {
	                eval "$(/home/800/bxs800/miniconda3/bin/conda shell.zsh hook)"
			        }
useconda
conda activate /g/data/be39/bxs800/miniconda/SoilCarbon

module load java

