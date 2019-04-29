#!/bin/bash
#SBATCH --job-name=QC # Job name
#SBATCH --mail-type=END,FAIL # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=shaleigh.smith@nyulangone.org # Where to send mail
#SBATCH --ntasks=4 # Run on a multiple CPU
#SBATCH --mem=64gb # Job memory request
#SBATCH --time=12:00:00 # Time limit hrs:min:sec
#SBATCH --output=/gpfs/scratch/sas1531/ngs_final/logs/qc_%j.log # Standard output and error log
#SBATCH -p cpu_short

# Load modules
module load fastqc/0.11.7

# Run fastqc
fastqc -o /gpfs/scratch/sas1531/ngs_final/QC/ ./data/${1}/*.fastq.gz
