#!/usr/bin/env bash
##JOB_GROUP_ID=template_CA.txt_1736508105
#SBATCH --cpus-per-task=1
#SBATCH --mem='80gb'
#SBATCH --time='7-00:00:00'
#SBATCH --constraint=cal
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out

source ~soft_bio_267/initializes/init_python
source ~soft_bio_267/initializes/init_degenes_hunter
#source /mnt/home/users/bio_267_uma/federogc/dev_R/ExpHunterSuite/init_degenes_hunter

#head -n 1 phenotypes.txt | tr "\t" "\n"|semtools -i - -O HPO --list_translate names | cut -f 2 | tr "\n" "\t" | sed -r 's/\t$/\n/g' > phenotypes_n.txt
#tail -n +2 phenotypes.txt >> phenotypes_n.txt

#head -n 1 genes.txt | tr "\t" "\n" > gene_list.txt
#sed -i '1s/^/ENSEMBL\n/' gene_list.txt
#add_annotation.R -i gene_list.txt -o genes_tr.txt -c 1 -I ENSEMBL -K SYMBOL
#tail -n +2 genes_tr.txt | awk '{if ($2 == "NA") print $1; else print $2 }'  | tr "\n" "\t"| sed -r 's/\t$/\n/g' > genes_n.txt
#tail -n +2 genes.txt >> genes_n.txt


#head -n 1 miRNA.txt | tr "\t" "\n" > miRNA_list.txt
#sed -i '1s/^/MIMAT\n/' miRNA_list.txt
#add_annotation.R -i miRNA_list.txt -o miRNA_tr.txt -c 1 -m
#tail -n +2 miRNA_tr.txt | awk '{if ($2 == "NA") print $1; else print $2 }'  | tr "\n" "\t"| sed -r 's/\t$/\n/g' > miRNA_n.txt
#tail -n +2 miRNA.txt >> miRNA_n.txt


#multivar_mine.R -i "miRNA_n.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes_n.txt,genes_n.txt" -A "miRNA_n.txt:s,genes_n.txt:s,phenotypes_n.txt:n" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_clean
#multivar_mine.R -i "miRNA.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes.txt,genes.txt" -A "miRNA.txt:s,genes.txt:s,phenotypes.txt:n" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 
#multivar_mine.R -i "miRNA_n.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes_n.txt,genes_n.txt,metabolomics.txt" -A "miRNA_n.txt:s,genes_n.txt:s,phenotypes_n.txt:n,metabolomics.txt:s" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_clean --seed 123
#multivar_mine.R -i "miRNA.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes.txt,genes.txt,metabolomics.txt" -A "miRNA.txt:s,genes.txt:s,phenotypes.txt:n,metabolomics.txt:s" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 --seed 123


#multivar_mine.R -i "miRNA_n.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes_n.txt,genes_n.txt,metabolomics.txt" -A "miRNA_n.txt:s,genes_n.txt:s,phenotypes_n.txt:n,metabolomics.txt:s" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_clean_3124 --seed 3214
#multivar_mine.R -i "miRNA.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes.txt,genes.txt,metabolomics.txt" -A "miRNA.txt:s,genes.txt:s,phenotypes.txt:n,metabolomics.txt:s" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_3124 --seed 3214

#multivar_mine.R -i "miRNA_n.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes_n.txt,genes_n.txt,metabolomics.txt" -A "miRNA_n.txt:s,genes_n.txt:s,phenotypes_n.txt:n,metabolomics.txt:s" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_clean_32145 --seed 32145
#multivar_mine.R -i "miRNA.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes.txt,genes.txt,metabolomics.txt" -A "miRNA.txt:s,genes.txt:s,phenotypes.txt:n,metabolomics.txt:s" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_32145 --seed 32145

#multivar_mine.R -i "miRNA_n.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes_n.txt,genes_n.txt,metabolomics.txt" -A "miRNA_n.txt:s,genes_n.txt:s,phenotypes_n.txt:n,metabolomics.txt:s" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_clean_32147 --seed 32147
#multivar_mine.R -i "miRNA.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes.txt,genes.txt,metabolomics.txt" -A "miRNA.txt:s,genes.txt:s,phenotypes.txt:n,metabolomics.txt:s" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_32147 --seed 32147

#multivar_mine.R -i "miRNA_n.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes_n.txt,genes_n.txt,metabolomics.txt" -A "miRNA_n.txt:s,genes_n.txt:s,phenotypes_n.txt:n,metabolomics.txt:s" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_clean_32149 --seed 32149
#multivar_mine.R -i "miRNA.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes.txt,genes.txt,metabolomics.txt" -A "miRNA.txt:s,genes.txt:s,phenotypes.txt:n,metabolomics.txt:s" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_32149 --seed 32149



#multivar_mine.R -i "miRNA_n.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes_n.txt,genes_n.txt" -A "miRNA_n.txt:s,genes_n.txt:s,phenotypes_n.txt:n" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_repI --seed 37179
#multivar_mine.R -i "miRNA_n.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes_n.txt,genes_n.txt" -A "miRNA_n.txt:s,genes_n.txt:s,phenotypes_n.txt:n" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_repII --seed 149
#multivar_mine.R -i "miRNA_n.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes_n.txt,genes_n.txt" -A "miRNA_n.txt:s,genes_n.txt:s,phenotypes_n.txt:n" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_repIII --seed 349
#multivar_mine.R -i "miRNA_n.txt,variants.txt,severity.txt,severity_scales.txt,phenotypes_n.txt,genes_n.txt" -A "miRNA_n.txt:s,genes_n.txt:s,phenotypes_n.txt:n" -S "variants.txt:n,severity.txt:n,severity_scales.txt:c" -c -n 2 -o results_repIV --seed 3499

