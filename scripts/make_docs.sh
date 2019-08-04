#!/bin/sh
dest=generated/static/docs
"$(yarn $YARN_FLAGS bin)/typedoc" --theme src/static/typedoc/ --out $dest src --ignoreCompilerErrors
cp -r $dest build/static/
