#!/bin/bash
set -e

PACK_DIR="better-death-mod-resourcepack"
OUTPUT="better-death-mod-resourcepack.zip"

rm -f "$OUTPUT"
cd "$PACK_DIR"
zip -r "../$OUTPUT" . > /dev/null
cd ..

HASH=$(sha1sum "$OUTPUT" | cut -d' ' -f1)

echo "Pack : $OUTPUT"
echo "SHA1 : $HASH"
