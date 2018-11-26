#! /bin/bash

echo "#! /bin/bash" > ~/bin/$1;
vim ~/bin/$1
chmod +x ~/bin/$1

echo $1 "created successfully"
