#!/bin/bash -l
#SBATCH -N 1
#SBATCH -c 10
#SBATCH -G 1
#SBATCH -C gpu
#SBATCH -t 5:00
#SBATCH -J queue
#SBATCH --job-name=gpu-job
#SBATCH --output=gpu-job.o%j
#SBATCH --error=gpu-job.e%j

export LIBOMPTARGET_INFO=4
#
# note: you will need to modify below here to launch your specific program
# it is assumed your environment is set up properly for using the Cori GPUs
# prior to you launching this batch script
#
nvprof -m sm_efficiency ./sobel_gpu 32 1
nvprof -m sm_efficiency ./sobel_gpu 64 1
nvprof -m sm_efficiency ./sobel_gpu 128 1
nvprof -m sm_efficiency ./sobel_gpu 256 1
nvprof -m sm_efficiency ./sobel_gpu 512 1
nvprof -m sm_efficiency ./sobel_gpu 1024 1
nvprof -m sm_efficiency ./sobel_gpu 32 4
nvprof -m sm_efficiency ./sobel_gpu 64 4
nvprof -m sm_efficiency ./sobel_gpu 128 4
nvprof -m sm_efficiency ./sobel_gpu 256 4
nvprof -m sm_efficiency ./sobel_gpu 512 4
nvprof -m sm_efficiency ./sobel_gpu 1024 4
nvprof -m sm_efficiency ./sobel_gpu 32 16
nvprof -m sm_efficiency ./sobel_gpu 64 16
nvprof -m sm_efficiency ./sobel_gpu 128 16
nvprof -m sm_efficiency ./sobel_gpu 256 16
nvprof -m sm_efficiency ./sobel_gpu 512 16
nvprof -m sm_efficiency ./sobel_gpu 1024 16
nvprof -m sm_efficiency ./sobel_gpu 32 64
nvprof -m sm_efficiency ./sobel_gpu 64 64
nvprof -m sm_efficiency ./sobel_gpu 128 64
nvprof -m sm_efficiency ./sobel_gpu 256 64
nvprof -m sm_efficiency ./sobel_gpu 512 64
nvprof -m sm_efficiency ./sobel_gpu 1024 64
nvprof -m sm_efficiency ./sobel_gpu 32 256
nvprof -m sm_efficiency ./sobel_gpu 64 256
nvprof -m sm_efficiency ./sobel_gpu 128 256
nvprof -m sm_efficiency ./sobel_gpu 256 256
nvprof -m sm_efficiency ./sobel_gpu 512 256
nvprof -m sm_efficiency ./sobel_gpu 1024 256
nvprof -m sm_efficiency ./sobel_gpu 32 1024
nvprof -m sm_efficiency ./sobel_gpu 64 1024
nvprof -m sm_efficiency ./sobel_gpu 128 1024
nvprof -m sm_efficiency ./sobel_gpu 256 1024
nvprof -m sm_efficiency ./sobel_gpu 512 1024
nvprof -m sm_efficiency ./sobel_gpu 1024 1024
nvprof -m sm_efficiency ./sobel_gpu 32 4096
nvprof -m sm_efficiency ./sobel_gpu 64 4096
nvprof -m sm_efficiency ./sobel_gpu 128 4096
nvprof -m sm_efficiency ./sobel_gpu 256 4096
nvprof -m sm_efficiency ./sobel_gpu 512 4096
nvprof -m sm_efficiency ./sobel_gpu 1024 4096
# nvprof -m sm_efficiency ./sobel_cpu_omp_offload


