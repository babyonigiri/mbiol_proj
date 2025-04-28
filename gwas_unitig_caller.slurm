#!/bin/sh
#SBATCH --job-name=0_15_17_unitig_caller
#SBATCH --nodes=1
#SBATCH --mem=32G
#SBATCH --partition=short
#SBATCH --time=12:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXX

module purge
module load Anaconda3
source activate $pyseer_env
conda activate /data/zool-bactgenomics/XXX/pyseer_env

unitig-caller --call \
        --refs /data/zool-bactgenomics/XXX/pyseer_env/unitig_caller/unitig_refs.txt \
        --out unitig_output \
        --pyseer \
        --rtab 

