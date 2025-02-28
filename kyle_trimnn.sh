#!/bin/bash

#SBATCH -J kyle_trimnn
#SBATCH -p gpu
#SBATCH -o output_%j.txt
#SBATCH -e error_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kmccrock@iu.edu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gpu-per-node=1
#SBATCH --time=48:00:00
#SBATCH --mem=16G
#SBATCH -A r00206

#Load any modules that your program needs
module load conda
conda activate TrimNNEnv

#Run your program, example: srun ./my_program my_program_arguments
srun python ./TrimNN.py -function all_size -size 4 -k 2 -target data/S1.gml -celltype 19 -outpath result_function3/ -search greedy