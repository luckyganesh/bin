#! /bin/bash
cat test/libTest.js |tr "\n" "@"| sed "s/\*\//\*\/---/g"|sed "s/\/\*/---\/\*/g" |tr "\-\-\-" "\n"|grep "\/\*"| tr "@" "\n" > commentedText
cat test/libTest.js | grep '\/\/' >> commentedText
lines=$(cat commentedText | wc -l)
if [ $lines == 0 ];then
  git commit
fi
  
