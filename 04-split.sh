#!/bin/bash
source config

SPLITTER=${PWD}/${DIR_TOOLS}/${TOOL_SPLITTER}/splitter.jar
LATEST=${PWD}/${DIR_COUNTRY}/${FILE_PBF}

mkdir -p "${DIR_SPLIT}"

pushd "${PWD}"
cd "${DIR_SPLIT}"

java -jar "${SPLITTER}" --max-nodes=3200000 "${LATEST}"

popd

