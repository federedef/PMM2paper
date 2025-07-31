source ~soft_bio_267/initializes/init_degenes_hunter
#clusters_to_enrichment.R -i parsed_genes_dim_metrics.txt -w 5 -o genes_functional_results -f MF,BP,CC,KEGG,Reactome -p 0.05 -k ENSEMBL -O "Human"
clusters_to_enrichment.R -i parsed_mfa_dim_metrics.txt  -w 5 -o mfa_functional_results -f MF,BP,CC,KEGG,Reactome -p 0.05 -k ENSEMBL -O "Human"
