#!/bin/bash
#SBATCH --job-name=me_bash
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1gb
#SBATCH --time=00:03:00
#SBATCH --partition=standard
#SBATCH --account=cusanovichlab
onion=("DNA RNA proteins")
for i in ${onion}
do echo "I study ${i}"
done