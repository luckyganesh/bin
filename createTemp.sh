#! /bin/sh

cd ~/temp 2>> /dev/null
if [ $? -ne 0 ]
then
  mkdir ~/temp
  cd ~/temp
fi