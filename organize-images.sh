#!/bin/bash
cd "$(dirname "$0")" || exit
mkdir -p image/backup
echo "📦 Moving PNG files to image/backup/..."
find image/standard -type f -name "*.webp" -exec mv {} image/backup/ \;
COUNT=$(ls image/backup/*.webp 2>/dev/null | wc -l)
echo "✅ Done! Moved $COUNT PNG file(s) to image/backup/"
