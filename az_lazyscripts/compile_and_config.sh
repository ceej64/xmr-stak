#!/usr/bin/env bash


cmake . -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make

az_lazyscripts/create_cpu_config.sh > bin/cpu.txt
az_lazyscripts/create_pool_config.sh > bin/pools.txt
cp az_lazyscripts/config.txt bin/config.txt
cp az_lazyscripts/config11.txt bin/config11.txt

