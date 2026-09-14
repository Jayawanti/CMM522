#!/bin/bash
#SBATCH --job-name=me_bash
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1gb
#SBATCH --time=00:03:00
#SBATCH --partition=standard
#SBATCH --account=cusanovichlab
#SBATCH --mail-type=END
#SBATCH --mail-user=jramakrishna@arizona.edu
onion=("DNA RNA proteins")
for i in ${onion}
do echo "I study ${i}"
done
