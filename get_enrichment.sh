source ~soft_bio_267/initializes/init_degenes_hunter
clusters_to_enrichment.R -i $1 -w 5 -o functional_results -f MF,BP,CC,KEGG,Reactome -p 0.05 -k ENSEMBL -O "Human"
