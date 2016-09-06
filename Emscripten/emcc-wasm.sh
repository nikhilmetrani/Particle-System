#!/bin/sh

mkdir -p dist/wasm
emcc -s ABORTING_MALLOC=0 -s NO_EXIT_RUNTIME=1 -s BINARYEN=1 release/ParticleSystem.bc --post-js ParticleSystem/glue.js -o dist/wasm/ParticleSystem.js

