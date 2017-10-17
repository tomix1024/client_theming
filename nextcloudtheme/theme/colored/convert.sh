#!/bin/sh

for SRC in *.svg
do
	FILE=$(basename "$SRC")
	BASE="${FILE%.*}"
	echo src $SRC
	echo base $BASE
	for SZ in 16 22 32 48 64 128 256 512
	do
		inkscape -z -e ${BASE}-${SZ}.png -w ${SZ} -h ${SZ} ${SRC}
	done
done
