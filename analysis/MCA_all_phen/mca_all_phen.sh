#!/usr/bin/env bash
##JOB_GROUP_ID=template_CA.txt_1736508105
#SBATCH --cpus-per-task=1
#SBATCH --mem='80gb'
#SBATCH --time='7-00:00:00'
#SBATCH --constraint=cal
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out

source ~soft_bio_267/initializes/init_degenes_hunter
source ~soft_bio_267/initializes/init_python
export PATH=~/aprendiendo/ExpHunterSuite/inst/scripts/:$PATH

head -n 1 phenotypes.txt | tr "\t" "\n"|semtools -i - -O HPO --list_translate names | cut -f 2 | tr "\n" "\t" | sed -r 's/\t$/\n/g' > phenotypes_n.txt
tail -n +2 phenotypes.txt >> phenotypes_n.txt

multivar_mine.R -i "severity_scales.txt,phenotypes_n.txt" -A "phenotypes_n.txt:n" -S "severity_scales.txt:c" -c -n 2
multivar_mine.R -i "severity_scales.txt,phenotypes_n.txt" -A "phenotypes_n.txt:n" -S "severity_scales.txt:c" -c -o result_test 
multivar_mine.R -i "severity_scales.txt,phenotypes.txt" -A "phenotypes.txt:n" -S "severity_scales.txt:c" -c -n 2 -o results_tr  

#multivar_mine.R -i "../MFA_all_genes/severity_scales.txt,../MFA_all_genes/phenotypes.txt" -A "phenotypes.txt:n" -S "severity_scales.txt:c"
