#!/bin/sh

if [ -z "$SBPATH" ]; then
	echo '$SBPATH undefined. Set it';
	exit 1;
fi

git archive master | tar -x -C $SBPATH
