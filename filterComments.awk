#! /usr/bin/awk -f
BEGIN{
  isCommented = 0;
  indicator = 0
}
($0 ~ /;$|{$|}$/) {
  print $0
}

