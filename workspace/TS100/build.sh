#!/bin/bash

set -e

build() {
	make -j 16 lang=$1
}

make clean

if [[ -n "$1" ]]; then
	build $1
	exit 0
fi

for lang in EN CS_CZ DE DK ES FR HR IT PL RU FI TR BG SK HUN BR LT UA SV ; do
	build $lang
	rm -rf Objects/src
done