#!/bin/sh

if [ "$SBPATH" = "" ]; then
	echo '$SBPATH undefined. Set it';
	exit 1;
fi

git archive master | tar -x -C $SBPATH -f -
if [ $? -eq 0 ]; then
	echo Done;
else
	echo Fail;
fi
