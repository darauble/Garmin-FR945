#!/bin/bash
source config

DATE=`date +%Y-%m-%d`
DESCRIPTION="`printf %-20.20s \"${MAP_TITLE}\"`${DATE}"

MKGMAP=${PWD}/${DIR_TOOLS}/${TOOL_MKGMAP}/mkgmap.jar
STYLE=${PWD}/${DIR_STYLE}
ARGS=${PWD}/${FILE_ARGS}
TYP=${PWD}/${TYP_COMPILED}

### COMPILE TYP ###
./compile-typ.sh

### Generate the Map ###
SRTM=""
if [ -f ${FILE_SRTM} ]; then
	SRTM=${PWD}/${FILE_SRTM}
fi

pushd ${PWD}
cd ${DIR_DATA}

java -jar ${MKGMAP} \
	--style-file=${STYLE} \
	--style=Hiking \
	--country-name="${COUNTRY}" \
	--overview-mapname="${COUNTRY}" \
	--family-name="${COUNTRY}" \
	--description="${DESCRIPTION}" \
	-c ${ARGS} \
	${COUNTRY}/split/*.osm.pbf ${SRTM} ${TYP}

popd

mkdir -p ${DIR_OUTPUT}
mv ${DIR_DATA}/gmapsupp.img ${DIR_OUTPUT}/${COUNTRY}-ble.img

