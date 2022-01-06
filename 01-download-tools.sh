#!/bin/bash
source config

### Download Tools
mkdir -p ${DIR_TOOLS}
pushd ${PWD}
cd ${DIR_TOOLS}

wget https://www.mkgmap.org.uk/download/${TOOL_MKGMAP}.zip
wget https://www.mkgmap.org.uk/download/${TOOL_SPLITTER}.zip

unzip ${TOOL_MKGMAP}.zip
unzip ${TOOL_SPLITTER}.zip

rm ${TOOL_MKGMAP}.zip
rm ${TOOL_SPLITTER}.zip

popd

