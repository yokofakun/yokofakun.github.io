#!/bin/bash
set -e
set -o pipefail

touch followers.txt followers.last.txt


wget -q -O - "https://gramho.com/followers/yokofakun" |\
xsltproc --html xtract.xsl - 2>/dev/null | sort | uniq > tmp.followers.txt

test -s tmp.followers.txt

comm -3 followers.last.txt tmp.followers.txt
mv tmp.followers.txt followers.last.txt

cat followers.last.txt followers.txt | sort | uniq > tmp.followers.txt

mv tmp.followers.txt followers.txt

wc -l followers.txt
