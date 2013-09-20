#!/usr/bin/env bash
set -e

dir=$PWD
files=

manualfile="$dir/FILES"

if [ -f $manualfile ]; then
  files="$(cat $manualfile)"
else
  # Get list of files to link
  excludes=".gitignore"
  base="$(find . -maxdepth 1 -name '.*' -not -name '.*.x.local' -type f | sed 's#^\./##' | grep -vF $excludes)"
  files="$base"
fi

echo $files
