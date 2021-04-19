
genome="chr_A_B_unassigned.fasta"
mkdir ${outpath}RepeatModeler_chr_A_B_unassigned
cd ${outpath}RepeatModeler_chr_A_B_unassigned
BuildDatabase -name chr_A_B_unassigned ${outpath}${genome}
RepeatModeler -pa 4 -database chr_A_B_unassigned -LTRStruct
cd ../
mkdir ${outpath}RepeatMasker_chr_A_B_unassigned
cp /apps/repeatmasker/4.1.0/Libraries/RepeatMaskerLib.embl ${outpath}RepeatMasker_chr_A_B_unassigned
/apps/repeatmasker/4.1.0/util/buildRMLibFromEMBL.pl ${outpath}RepeatMasker_chr_A_B_unassigned/RepeatMaskerLib.embl > {outpath}RepeatMasker_chr_A_B_unassigned/RepeatMaskerLib.fasta
cd RepeatMasker_chr_A_B_unassigned
cat ../RepeatModeler_chr_A_B_unassigned/chr_A_B_unassigned-families.fa RepeatMaskerLib.fasta > PGT_Repeats.fasta
RepeatMasker -s -gff -lib PGT_Repeats.fasta -dir ./ -xsmall -pa 4 ${outpath}${genome}
