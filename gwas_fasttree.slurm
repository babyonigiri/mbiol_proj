#!/bin/bash
#SBATCH --nodes=1
#SBATCH --partition=medium
#SBATCH --time=48:00:00
#SBATCH --ntasks-per-node=12
#SBATCH --job-name=fasttree_gwas
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXX

module purge
module load FastTree/2.1.11-GCCcore-11.3.0

FastTree -gtr -gamma -nt /data/zool-bactgenomics/XXX/panaroo/panaroo_output_rerun/core_gene_alignment_filtered.aln > fasttree_core_gene_alignment_filtered.newick
