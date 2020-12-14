
source /home/800/bxs800/.bashrc

conda activate /g/data/be39/bxs800/miniconda/SoilCarbon

ASSEMBLFASTA=$1

echo $ASSEMBLFASTA
run_BUSCO.py -i ${ASSEMBLYFASTA}  -l /g/data/be39/bxs800/db/busco/ascomycota_odb9 -o BUSCO -m genome -c 16
