#!/bin/bash
#SBATCH --job-name=gene_powerup
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=100mb
#SBATCH --time=00:02:00
#SBATCH --partition=windfall
#SBATCH --output=gene_powerup_%j.out
#SBATCH --error=gene_powerup_%j.err

set -e

cd ~/ccbb_projects

echo "Starting the Gene Power-Up!"

#To select only protein-coding genes
#and save the matching lines in anew file coding_genes.txt
grep -w 'coding' gene_results.txt > coding_genes.txt

#and add 50 to each coding gene's column 2 
#save the modfied rows in a new file
awk 'BEGIN {OFS="\t"} {$2=$2+50; print}' \
    coding_genes.txt > powered_up_genes.txt

echo "Original coding genes:"
cat coding_genes.txt

echo "Powered-up coding genes:"
cat powered_up_genes.txt

#to confirm if the script reaches the end
echo "Gene Power-Up completed!"
