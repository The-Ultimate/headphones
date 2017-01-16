#!/bin/sh
PYTHON=/usr/bin/python
HEAD=/headphones
DATA=/Config/headphones

if [ -f $HEAD/config.ini ];
then
	mkdir $DATA
	mv $HEAD/config.ini $DATA
fi

$PYTHON $HEAD/Headphones.py --datadir $DATA --config $DATA/config.ini
