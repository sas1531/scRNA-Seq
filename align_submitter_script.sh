#!/bin/bash
#SBATCH --job-name=job_submitter
#SBATCH --nodes=1
#SBATCH --mem=200MB
#SBATCH --time=1:00:00
#SBATCH --error=job_sub_error.txt
#SBATCH --output=job_sub_stdout.txt

sbatch --array=1 align_script.sh  UNINFECTED_Run1  Early
sbatch --array=1 align_script.sh  LATENT_Run3  Latent
sbatch --array=1 align_script.sh  LY20_Run2  ly20
sbatch --array=1 align_script.sh  LY48_Run2  ly48
