#!/bin/bash
#SBATCH --nodes=1
#SBATCH --partition=long
#SBATCH --time=7-00:00:00
#SBATCH --ntasks-per-node=12
#SBATCH --job-name=clonalframeML_gwas
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXX
 
module purge
module load ClonalFrameML/1.12-foss-2022a
 
ClonalFrameML /data/zool-bactgenomics/XXX/fasttree_gwas/fasttree_core_gene_alignment_filtered.newick \
        /data/zool-bactgenomics/XXX/clonalframeml_gwas/core_gene_alignment_filtered.aln \
         clonalframeml_

