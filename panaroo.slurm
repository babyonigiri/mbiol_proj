#!/bin/sh
#SBATCH --job-name=0_15_17_panaroo
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=6
#SBATCH --mem=32G
#SBATCH --cluster=htc
#SBATCH --partition=short
#SBATCH --time=12:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=XXX
#SBATCH --output=/data/zool-bactgenomics/XXX/panaroo/panaroo_slurm_outputs/panaroo_job_%j.out
#SBATCH --error=/data/zool-bactgenomics/XXX/panaroo/panaroo_slurm_outputs/panaroo_job_%j.err


module purge
module load panaroo/1.3.2-foss-2021b

panaroo -i /data/zool-bactgenomics/XXX/panaroo/gff3_file_path_list.txt \
        -o /data/zool-bactgenomics/XXX/panaroo/panaroo_output \
        -a core \
        --core_threshold 0.95 \
        -t 6 \
        --clean-mode strict \
        --remove-invalid-genes
