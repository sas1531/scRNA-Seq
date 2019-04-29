#!/bin/bash
#SBATCH --job-name=rat_genome
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=shaleigh.smith@nyulangone.org
#SBATCH --ntasks=4
#SBATCH --mem=64gb
#SBATCH --time=03:00:00
#SBATCH --output=rat_genome%j.log
#SBATCH -p cpu_short

### download
wget ftp://igenome:G3nom3s4u@ussd-ftp.illumina.com/Rattus_norvegicus/UCSC/rn6/Rattus_norvegicus_UCSC_rn6.tar.gz

### unzip
tar -xvzf Rattus_norvegicus_UCSC_rn6.tar.gz
