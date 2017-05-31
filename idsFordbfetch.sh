#/usr/bin/env sh
< "${1}" head -n "${2}" | sed 's/SP\://g;' | tr '\n' ','
