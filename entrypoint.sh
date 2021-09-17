#!/usr/bin/env bash

set -eu

if [ -z "${CMD_PATH+x}" ]; then
  export CMD_PATH=""
fi

OUTPUT_DIR="$GITHUB_WORKSPACE/output"
mkdir -p "$OUTPUT_DIR"

if ! FILE_LIST=$(/build.sh "$OUTPUT_DIR"); then
  exit 1
fi
