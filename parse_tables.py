#!/usr/bin/env python
import argparse
import os

def parse_table(file):
    """
    Parse a table from a file.
    """
    dim2parse_table = {}
    with open(file, 'r') as f:
        i = 0
        for line in f:
            if i == 0: 
                i += 1
                continue
            line = line.strip().split()
            gene = line[0]
            if "ENSG" not in gene: continue
            # var_type = line[1]
            # if var_type != "quantitative": continue
            # metric_type = line[2]
            # if metric_type != "correlation": continue
            # if "hsa-miR" in gene or 
            metric = line[4]
            pvalue = line[5]
            dim = line[3]
            if dim not in dim2parse_table:
                dim2parse_table[dim] = []
            data = [gene, metric, pvalue]
            dim2parse_table[dim].append(data)
    return dim2parse_table

def get_top_table(table, top=10):
    """
    Get the top table from a list of tables.
    """
    parse_list = [] 
    top_data = sorted(table, key=lambda x: -abs(float(x[1])))
    # select top from one parte and bottom from the other
    parse_list.extend([line[0] for line in top_data[:top]])
    return parse_list


parser = argparse.ArgumentParser(description="Parse tables from a file")
parser.add_argument(
    "-f", "--files", dest="files", type=lambda x: x.split(","), help="File to parse", required=True)
options = parser.parse_args()

for file in options.files:
    dim2parse = parse_table(file)
    print(dim2parse)
    dim2write = {}
    with open("parsed"+"_"+os.path.basename(file), 'w') as f:
        for dim, table in dim2parse.items():
            parse_list = get_top_table(table)
            f.write(f"{dim}"+"\t"+",".join(parse_list)+"\n")
    print(f"Parsed {file} and wrote to {file}")


