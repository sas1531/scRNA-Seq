#!/bin/bash
#SBATCH --job-name=genome # Job name
#SBATCH --mail-type=END,FAIL # Mail event
#SBATCH --mail-user=shaleigh.smith@nyulangone.org # Where to send mail
#SBATCH --ntasks=4 # Run on a multiple CPU
#SBATCH --mem=64gb # Job memory request
#SBATCH --time=12:00:00 # Time limit hrs:min:sec
#SBATCH --output=/gpfs/scratch/sas1531/ngs_final/logs/genome_%j.log # Standard output and error log
#SBATCH -p cpu_short

# Load modules
module load cellranger/3.0.0

# Make reference transcriptome
cellranger mkref --genome=rat_ref \
--fasta=/gpfs/scratch/sas1531/ngs_final/rat/Rattus_norvegicus/UCSC/rn6/Sequence/WholeGenomeFasta/genome.fa \
--genes=/gpfs/scratch/sas1531/ngs_final/rat/Rattus_norvegicus/UCSC/rn6/Annotation/Genes/genes.gtf
