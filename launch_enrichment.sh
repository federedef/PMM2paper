%functional_analysis_[$datasets]){
        resources: -c 16 -t 0-00:59:59 -m '60gb'
        echo (*) > tracker
        source ~soft_bio_267/initializes/init_degenes_hunter
        ?
        clusters_to_enrichment.R -i !subgraph_extraction_clustering_*!/clusters_aggregated.txt -w [cpu] -o functional_results -f MF,BP,CC,KEGG,Reactome -p $pvalue_cutoff -k ENSEMBL -O "Human"
        retVal=$?
    if [ $retVal -ne 0 ]; then
        echo ERROR: Last command exited with code $retVal
        exit $retVal
    fi
}

