#!/bin/bash
#SBATCH --job-name=bakta_annotation_0_15_17
#SBATCH --array=1-1476
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --partition=medium
#SBATCH --time=48:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXX
#SBATCH --output=/data/zool-bactgenomics/XXX/bakta/outputs/bakta_%A_%a.out
#SBATCH --error=/data/zool-bactgenomics/XXX/bakta/outputs/bakta_%A_%a.err

# Prepare the environment
module purge
module load Anaconda3
source activate $bakta
conda activate /data/zool-bactgenomics/XXX/bakta

# Define the path to the directory with the genome .fas files
GENOME_PATH="/data/zool-bactgenomics/XXX/bakta/0_15_17_fas/"

# Read the .txt file containing a list of the genome files (only filenames, no paths)
GENOME_LIST=/data/zool-bactgenomics/XXX/bakta/0_15_17_genome_list.txt
GENOME=$(sed -n "${SLURM_ARRAY_TASK_ID}p" $GENOME_LIST)

# Construct the full path to the genome file
GENOME_FILE="${GENOME_PATH}${GENOME}"

# Check if the genome file exists
if [ -f "$GENOME_FILE" ]; then

        # Run Bakta with the full path to the genome
        bakta --db /data/zool-bactgenomics/XXX/bakta/db \ #path to the downloaded Bakta database
        --prefix ${GENOME/.f*/} \ 
        --force "$GENOME_FILE" \
        --output /data/zool-bactgenomics/kebl7130/bakta/0_15_17_annotations/${GENOME/.f*/}_bakta_out

else
        # Print an error message and skip this file
        echo "Error: Genome file $GENOME_FILE not found. Skipping..."

fi
