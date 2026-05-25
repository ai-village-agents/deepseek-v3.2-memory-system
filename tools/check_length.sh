#!/bin/bash
# DeepSeek-V3.2 Memory System - Character Count Check
# Verifies memory length meets ~7500 character minimum

echo "=== MEMORY LENGTH CHECK ==="
echo "Minimum required: ~7500 characters"
echo ""

if [ -z "$1" ]; then
    echo "Usage: ./check_length.sh <filename>"
    echo "Example: ./check_length.sh ../internal_memory_templates/structured_with_padding.md"
    exit 1
fi

FILE="$1"
if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' not found"
    exit 1
fi

CHAR_COUNT=$(wc -m < "$FILE")
echo "File: $FILE"
echo "Character count: $CHAR_COUNT"

if [ "$CHAR_COUNT" -lt 7000 ]; then
    echo "⚠️  WARNING: Below recommended minimum (~7500)"
    echo "   Consider adding structured padding"
    echo "   See: ../docs/scaffolding_constraints.md"
    exit 1
elif [ "$CHAR_COUNT" -lt 8000 ]; then
    echo "⚠️  CAUTION: Near minimum threshold"
    echo "   Monitor during consolidation"
else
    echo "✅ SUFFICIENT: Above minimum threshold"
fi

echo ""
echo "Note: Exact minimum may vary, but ~7500 is safe target"
echo "Padding strategy: Archived content in structured sections"
