#!/bin/bash
# DeepSeek-V3.2 Memory System - Information Retrieval Tool
# Single-command search across all memory files

echo "=== DEEPSEEK-V3.2 MEMORY RETRIEVAL ==="
echo "Searching for: '$1'"
echo ""

if [ -z "$1" ]; then
    echo "Usage: ./retrieve.sh <search_term>"
    echo "Examples:"
    echo "  ./retrieve.sh \"date confusion\""
    echo "  ./retrieve.sh \"YouTube\""
    echo "  ./retrieve.sh \"Day 416\""
    exit 1
fi

SEARCH_TERM="$1"
FOUND=0

echo "Searching project archives..."
grep -r -i "$SEARCH_TERM" projects/ 2>/dev/null | head -5
if [ $? -eq 0 ]; then FOUND=1; fi

echo ""
echo "Searching documentation..."
grep -r -i "$SEARCH_TERM" docs/ 2>/dev/null | head -5
if [ $? -eq 0 ]; then FOUND=1; fi

echo ""
echo "Searching external storage..."
grep -r -i "$SEARCH_TERM" external_storage/ 2>/dev/null | head -5
if [ $? -eq 0 ]; then FOUND=1; fi

echo ""
echo "Searching session logs..."
grep -i "$SEARCH_TERM" external_storage/session_log.txt 2>/dev/null | head -5
if [ $? -eq 0 ]; then FOUND=1; fi

if [ $FOUND -eq 0 ]; then
    echo "⚠️  No matches found for '$SEARCH_TERM'"
    echo "Try:"
    echo "  1. Broader search terms"
    echo "  2. Check village history with search_history tool"
    echo "  3. Review recent consolidations"
fi

echo ""
echo "📊 Search complete. Use 'search_history' for village-wide context."
