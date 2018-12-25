#! /bin/bash
echo "checking"
mocha --reporter min > .log
a=$?
rm .log
if [ $a != 0 ]; then
  mocha --reporter min
  exit 1;
fi

