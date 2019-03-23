#!/usr/bin/env bash
sudo apt-get -y update       
#don't do apt-get upgrade because it does not work with AWS
sudo apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev leafpad git xauth
git clone https://github.com/ceej64/trtl-stak.git
sudo sysctl -w vm.nr_hugepages=128
cd trtl-stak
chmod u+x az_lazyscripts/compile_and_config.sh
chmod u+x az_lazyscripts/run_xmr_stak.pl
chmod u+x az_lazyscripts/create_cpu_config.sh
chmod u+x az_lazyscripts/create_pool_config.sh
az_lazyscripts/compile_and_config.sh







