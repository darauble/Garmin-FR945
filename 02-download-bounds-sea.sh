#!/bin/bash
source config

mkdir -p ${DIR_BOUNDS}

pushd ${PWD}
cd ${DIR_BOUNDS}

wget http://osm.thkukuk.de/data/${FILE_BOUNDS}
wget http://osm.thkukuk.de/data/${FILE_SEA}

popd

