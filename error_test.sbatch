#!/bin/bash
#SBATCH --job-name=errtest
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=100mb
#SBATCH --time=00:01:00
#SBATCH --partition=standard
#SBATCH --account=cusanovichlab
ls ~/ccbb_projects/ latest_nature_paper/
