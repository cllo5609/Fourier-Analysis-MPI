#!/bin/bash
#SBATCH -J AutoCorr
#SBATCH -A cs475-575
#SBATCH -p classmpifinal
#SBATCH -N 8 # number of nodes
#SBATCH -n 8 # number of tasks
#SBATCH --constraint=ib
#SBATCH -o fourier.out
#SBATCH -e fourier.err
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=lohrcl@oregonstate.edu
module load slurm
module load openmpi
mpic++ fourier.cpp -o fourier -lm
mpiexec -np 8 fourier