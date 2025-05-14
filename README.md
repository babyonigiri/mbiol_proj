# Implementing the Life Identification Number Code System: Uncovering Gaps in Neisseria meningitidis Serogroup B Vaccine Coverage
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
3. Pyseer (gene and unitig; Slurm script for Commandline)

## Supplementary data
Table S1: Isolate IDs for the dataset used to determine LIN code groups
Table S2: Isolate IDs for the dataset containing all isolates in prefix group "0", after quality filtering
Table S3: Isolate IDs for the dataset containing the isolates used to build the FastTree for prefix group "0", after filtering to <2000 isolates for Genome Comparator alignment
