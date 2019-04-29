#!/bin/bash
#SBATCH --job-name=align # Job name
#SBATCH --mail-type=END,FAIL # Mail event
#SBATCH --mail-user=shaleigh.smith@nyulangone.org # Where to send mail
#SBATCH --ntasks=8 # Run on a multiple CPU
#SBATCH --mem=64gb # Job memory request
#SBATCH --time=24:00:00 # Time limit hrs:min:sec
#SBATCH --output=/gpfs/scratch/sas1531/ngs_final/logs/align_%j.log # Standard output and error log
#SBATCH -p cpu_medium

# Load modules
module load cellranger/3.0.0

# Run count
cellranger count --id=${1} \
--transcriptome=/gpfs/scratch/sas1531/ngs_final/rat_ref \
--fastqs=./data/${1}/ \
--sample=${2}
