#! /bin/bash

cat test/*.js | awk '/\/\//,/$/' > commentedText
cat test/*.js | awk '/\/\*/,/\*\//' >> commentedText
cat commentedText
lines=$(cat commentedText|wc -l)
rm commentedText
if [ $lines != 0 ];then
  read -p "you have some commented code, would you like to commit ? (y/n) : " confirmation
  if [ $confirmation != "y" ]; then
    exit 1;
  fi
fi
git commit
