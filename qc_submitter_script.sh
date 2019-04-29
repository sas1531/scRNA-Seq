#!/bin/bash
#SBATCH --job-name=job_submitter
#SBATCH --nodes=1
#SBATCH --mem=200MB
#SBATCH --time=1:00:00
#SBATCH --error=job_sub_error.txt
#SBATCH --output=job_sub_stdout.txt

sbatch --array=1 qc_script.sh  UNINFECTED_Run1
sbatch --array=1 qc_script.sh  LATENT_Run3
sbatch --array=1 qc_script.sh  LY20_Run2
sbatch --array=1 qc_script.sh  LY48_Run2
