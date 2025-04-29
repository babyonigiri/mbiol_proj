#!/bin/bash
#SBATCH --job-name=extract_sig_fas
#SBATCH --time=01:00:00
#SBATCH --partition=short
#SBATCH --mem=4G
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXX
#SBATCH --output=/data/zool-bactgenomics/XXX/pyseer_env/gene_gwas/extract_sig_fas_outputs/extract_sig_fas_%j.out
#SBATCH --error=/data/zool-bactgenomics/XXX/pyseer_env/gene_gwas/extract_sig_fas_outputs/extract_sig_fas_%j.err

# Load SeqKit
module purge
module load SeqKit/2.2.0

# Define input and output files
GENE_LIST="/data/zool-bactgenomics/XXX/pyseer_env/gene_gwas/gene_gwas_analysis/sig_variant_gene_names.txt"
REFERENCE="/data/zool-bactgenomics/XXX/panaroo/panaroo_output_rerun/pan_genome_reference.fa"
OUTPUT="/data/zool-bactgenomics/XXX/pyseer_env/gene_gwas/gene_gwas_analysis/extracted_genes.fasta"

# Clear output file if it exists
> $OUTPUT

# Extract gene sequences
while read gene; do
    seqkit grep -nrp "$gene" $REFERENCE >> $OUTPUT
done < $GENE_LIST

echo "Gene extraction complete!"
