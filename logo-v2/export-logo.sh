#!/bin/bash
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
EXPORT_DIR="$SCRIPT_DIR/static"
DOCUMENT_FILE="$SCRIPT_DIR/inkscape-doc.svg"

inkscape --export-overwrite --export-type=svg --export-plain-svg --export-filename="$EXPORT_DIR/logo.svg" "$DOCUMENT_FILE"
inkscape --export-overwrite --export-type=png --export-filename="$EXPORT_DIR/logo-180px.png" --export-width=180 --export-height=180 "$DOCUMENT_FILE"
inkscape --export-overwrite --export-type=png --export-filename="$EXPORT_DIR/logo-1024px.png" --export-width=1024 --export-height=1024 "$DOCUMENT_FILE"
sed -e 's/width="180"/width="32"/; s/height="180"/height="32"/; s/viewBox="0 0 180 180"/viewBox="32 32 116 116"/;' "$EXPORT_DIR/logo.svg" > "$EXPORT_DIR/favicon.svg"
inkscape --export-overwrite --export-type=png --export-filename="$EXPORT_DIR/favicon-32px.png" --export-area=32:32:148:148 --export-width=32 --export-height=32 "$DOCUMENT_FILE"