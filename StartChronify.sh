#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$_")" && pwd)"

echo $SCRIPT_DIR

pushd $SCRIPT_DIR/publish
/bin/bash -c $SCRIPT_DIR/publish/Chronify.Server
popd
