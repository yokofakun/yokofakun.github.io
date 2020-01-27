#!/bin/bash
touch counts.tsv

set -e

wget -q -O - "https://www.toopics.com/yokofakun/followers?lang=en" |\
grep  -o -E "Instagram profile. [0-9]+ Followers" | sort | uniq | grep -o -E '[0-9]+' | while read F; do (echo -n "$F," && date '+%Y-%m-%d' ) > jeter.count ; done

cat counts.tsv jeter.count | sort | uniq | sort -t, -k2,2V > jeter2.count

mv jeter2.count counts.tsv

rm jeter.count

tail -1 counts.tsv
