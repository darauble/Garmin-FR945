#!/bin/bash
source config

MKGMAP=${PWD}/${DIR_TOOLS}/${TOOL_MKGMAP}/mkgmap.jar
STYLE=${PWD}/${DIR_STYLE}
ARGS=${PWD}/${FILE_ARGS}
TYP=${PWD}/${TYP_COMPILED}

### COMPILE TYP ###
java -cp "${MKGMAP}:lib/*.jar" uk.me.parabola.mkgmap.main.TypCompiler ${TYP_SOURCE} ${TYP_COMPILED}

