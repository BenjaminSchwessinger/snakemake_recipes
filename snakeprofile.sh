alias qlogin='qsub -I -P xf3 -l walltime=4:00:00 -l ncpus=8 -l mem=192G -l jobfs=400G -l storage=scratch/xf3 -q express -l wd'
#alias qlogin-cpy='qsub -I -P xe2 -l walltime=10:00:00 -l ncpus=1 -l mem=4G -l jobfs=300G -l storage=scratch/xe2+gdata/xe2 -l other=mdss -q copyq -l wd'
alias uqstat='qstat -u $USER'

function useconda() {
	        eval "$(/home/800/bxs800/miniconda3/bin/conda shell.zsh hook)"
	}
