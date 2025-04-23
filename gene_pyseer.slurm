#!/bin/sh
#SBATCH --job-name=0_15_17_gene_based_pyseer
#SBATCH --mem=32G
#SBATCH --cluster=arc
#SBATCH --partition=short
#SBATCH --time=12:00:00
#SBATCH --cpus-per-task=8
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXX
#SBATCH --output=/data/zool-bactgenomics/XXX/pyseer_env/gene_gwas/gene_gwas_slurm_outputs/gene_pyseer_job_%j.out
#SBATCH --error=/data/zool-bactgenomics/XXX/pyseer_env/gene_gwas/gene_gwas_slurm_outputs/gene_pyseer_job_%j.err

module purge
module load Anaconda3
source activate /data/zool-bactgenomics/XXX/pyseer_env

pyseer  --phenotypes /data/zool-bactgenomics/XXX/pyseer_env/0_15_17_phenotypes.tsv \
        --pres /data/zool-bactgenomics/XXX/panaroo/panaroo_output_rerun/gene_presence_absence.Rtab \
        --no-distances \
        --min-af 0.01 \
        --max-af 0.99 \
        --cpu 8 \
        --output-patterns /data/zool-bactgenomics/XXX/pyseer_env/gene_gwas/gene_bonferroni_correction.txt \
        --print-samples > /data/zool-bactgenomics/XXX/pyseer_env/gene_gwas/gene_gwas_results.txt
