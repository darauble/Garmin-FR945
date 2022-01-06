#!/bin/bash
source config

if [ -f ${DIR_COUNTRY}/${FILE_PBF} ]; then
	rm -f ${DIR_COUNTRY}/${FILE_PBF}
fi

mkdir -p ${DIR_COUNTRY}
curl http://download.geofabrik.de/${CONTINENT}/${FILE_PBF} --output ${DIR_COUNTRY}/${FILE_PBF}

