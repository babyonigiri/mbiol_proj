#!/bin/bash
#SBATCH --nodes=1
#SBATCH --partition=medium
#SBATCH --time=48:00:00
#SBATCH --ntasks-per-node=12
#SBATCH --job-name=fasttree_superlineage_0_lin
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXX

module purge
module load FastTree/2.1.11-GCCcore-11.3.0

FastTree -gtr -gamma -nt superlineage_0_lin_core.fas > fasttree_superlineage_0_lin_core.newick
