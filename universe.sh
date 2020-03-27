#! /bin/zsh

pdir=$(pwd)
month=$(date +%B)
take ~/universe/$month
day="$(date +%d).txt"
vim $day
cd $pdir
