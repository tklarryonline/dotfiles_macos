#!/bin/sh

# Fix Husky cannot find npx via asdf in Git UI
export ASDF_DATA_DIR="$HOME/.asdf"
export PATH="$ASDF_DATA_DIR/shims:$PATH"
