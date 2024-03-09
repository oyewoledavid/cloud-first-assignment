#!/bin/bash
# sudo apt-get update
# sudo apt install tar
timestamp=$(date '+%Y_%m_%d_%H_M_%S')
source_directory=$1
destination_directory=$2
backup_directory=$destination_directory$timestamp.tar.gz


sudo tar -czf $backup_directory $source_directory
echo $backup_directory

sudo mkdir $2
sudo cp -r $source_directory $destination_directory

#sudo rename $destination_directory $new_destination_directory$timestamp