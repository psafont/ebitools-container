#/usr/bin/env sh
head -n "$2" "$1"| sed 's/SP\://g;' | tr '\n' ','
