#!/bin/sh
dest=generated/static/docs
typedoc --out $dest src --ignoreCompilerErrors

# Since theme is written with bogus access permissions
find $dest/assets -type f -exec chmod a+w '{}' ';'

cp -r $dest build/static/
