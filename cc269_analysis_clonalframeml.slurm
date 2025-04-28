#!/bin/bash
#SBATCH --nodes=1
#SBATCH --partition=long
#SBATCH --time=7-00:00:00
#SBATCH --ntasks-per-node=12
#SBATCH --job-name=clonalframeML_lin
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXX
 
module purge
module load ClonalFrameML/1.12-foss-2022a
 
ClonalFrameML /data/zool-bactgenomics/XXX/fasttree_0/resolved_fasttree_superlineage_0_lin_core.$
        /data/zool-bactgenomics/XXX/fasttree_0/superlineage_0_lin_core.fas \
         clonalframeml_lin_

