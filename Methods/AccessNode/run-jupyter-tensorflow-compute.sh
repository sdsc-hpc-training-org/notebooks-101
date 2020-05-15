#!/usr/bin/env bash

#SBATCH --job-name=tensorflow-compute
#SBATCH --partition=compute
#SBATCH --time=00:30:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --output=tensorflow-compute.o%j.%N

module purge
module list
printenv
time -p singularity exec /share/apps/compute/singularity/images/tensorflow/tensorflow-cpu.simg jupyter lab --no-browser --ip="$(hostname)"