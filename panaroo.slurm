#!/bin/sh
#SBATCH --job-name=0_15_17_panaroo
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=32G
#SBATCH --cluster=arc
#SBATCH --partition=medium
#SBATCH --time=48:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=faye.song@keble.ox.ac.uk
#SBATCH --output=/data/zool-bactgenomics/kebl7130/panaroo/panaroo_slurm_outputs/panaroo_job_%j.out
#SBATCH --error=/data/zool-bactgenomics/kebl7130/panaroo/panaroo_slurm_outputs/panaroo_job_%j.err


module purge
module load panaroo/1.3.2-foss-2021b

panaroo -i /data/zool-bactgenomics/kebl7130/panaroo/gff3_file_paths.txt \
        -o /data/zool-bactgenomics/kebl7130/panaroo/panaroo_output_rerun \
        -a core \
        --core_threshold 0.95 \
        -t 8 \
        --clean-mode strict \
        --remove-invalid-genes
