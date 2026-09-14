#!/bin/bash
#SBATCH --job-name=gene_powerup_pipe
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=100mb
#SBATCH --time=00:02:00
#SBATCH --partition=windfall
#SBATCH --output=gene_powerup_%j.out
#SBATCH --error=gene_powerup_%j.err

#to detect an failure in any command within a pipeline
set -eo pipefail

cd ~/ccbb_projects

echo "Starting the Piped Gene Power-Up!"

#To select only protein-coding genes
#and save the matching lines in anew file coding_genes.txt
grep -w 'coding' gene_results.txt | awk 'BEGIN {OFS="\t"} {$2=$2+50; print}' > piped_powered_up_genes.txt

echo "Piped results:"
cat piped_powered_up_genes.txt

#to confirm if the script reaches the end
echo "Gene Power-Up completed!"

