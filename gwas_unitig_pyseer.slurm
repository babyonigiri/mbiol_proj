#!/bin/sh
#SBATCH --job-name=0_15_17_unitig_based_pyseer
#SBATCH --mem=32G
#SBATCH --cluster=arc
#SBATCH --partition=short
#SBATCH --time=12:00:00
#SBATCH --cpus-per-task=8
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXX
#SBATCH --output=/data/zool-bactgenomics/XXX/pyseer_env/unitig_gwas/unitig_pyseer_job_%j.out
#SBATCH --error=/data/zool-bactgenomics/XXX/pyseer_env/unitig_gwas/unitig_pyseer_job_%j.err

module purge
module load Anaconda3
source activate /data/zool-bactgenomics/kebl7130/pyseer_env

pyseer  --phenotypes /data/zool-bactgenomics/kebl7130/pyseer_env/0_15_17_phenotypes.tsv \
        --kmers /data/zool-bactgenomics/kebl7130/pyseer_env/unitig_caller/unitig_output.pyseer \
        --uncompressed \
        --no-distances \
        --min-af 0.01 \
        --max-af 0.99 \
        --cpu 8 \
        --print-samples > /data/zool-bactgenomics/kebl7130/pyseer_env/unitig_gwas/unitig_gwas_results.txt

