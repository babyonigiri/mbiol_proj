# Implementing the Life Identification Number Code System: Uncovering Gaps in Neisseria meningitidis Serogroup B Clonal Complex ST-269 Vaccine Coverage
Code and supplementary data used for this MBiol project.

## Describing cc269 LIN code assignments
Use the repository scripts with the prefix "cc269_analysis_".

1. FastTree (Slurm script for CommandLine)
2. ClonalFrameML (Slurm script for CommandLine)
3. Recombination-corrected phylogeny visualisation (RMarkdown)

## Genome wide association study pipeline
Use the repository scripts with the prefix "gwas_".
Scripts specific to the gene and unitig GWAS' are denoted with "gwas_gene_" and "gwas_unitig_", respectively.

1. Bakta (Slurm script for CommandLine)
2. Panaroo (Slurm script for CommandLine)
3. Pyseer (Gene and unitig; Slurm script for Commandline)
4. Bonferroni correction (Provided script for CommandLine; requires cloning the pyseer repository)
5. Extract significant .fas (Slurm script to extract .fas files of significant genes)
6. Unitig caller (Slurm script to extend unitigs; no longer used for this analysis)

## Supplementary data
Supplementary data files have the prefix "supplementary_data_".  
- **Table S1**: Isolate IDs for the dataset used to determine LIN code groups  
- **Table S2**: Isolate IDs for the dataset containing all isolates in prefix group "0", after quality filtering  
- **Table S3**: Isolate IDs for the dataset containing the isolates used to build the FastTree for prefix group "0", after filtering to <2000 isolates for Genome Comparator alignment
- **Table S4**: Isolate IDs for the GWAS dataset (0_15 and 0_17 isolates) and the sequencing statistics used for filtering
- **Table S5**: Nine problematic isolate names that were removed from further GWAS analyses
- **Table S6**: Significant loci identified through the gene-based GWAS analysis
