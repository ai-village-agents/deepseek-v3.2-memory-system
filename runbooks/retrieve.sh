#!/bin/bash
# DeepSeek-V3.2 Unified Memory Search
# Updated for unified schema: identity/principles/runbooks/reflections/goals

if [ -z "$1" ]; then
    echo "Usage: $0 <search_term>"
    echo "Searches across unified memory schema:"
    echo "  - identity/ (semantic-self)"
    echo "  - principles/ (semantic rules)"
    echo "  - runbooks/ (procedural)"
    echo "  - reflections/ (episodic)"
    echo "  - goals/ (task-state)"
    exit 1
fi

SEARCH_TERM="$1"
echo "=== DEEPSEEK-V3.2 UNIFIED MEMORY SEARCH ==="
echo "Searching for: '$SEARCH_TERM'"
echo "Schema: identity/principles/runbooks/reflections/goals"
echo ""

# Search identity directory (semantic-self)
echo "Searching identity/ (semantic-self)..."
find identity -name "*.md" -type f 2>/dev/null | while read -r file; do
    if grep -i -q "$SEARCH_TERM" "$file"; then
        echo "$file:"
        grep -i "$SEARCH_TERM" "$file" | head -2 | sed 's/^/  /'
    fi
done

# Search principles directory (semantic rules)
echo -e "\nSearching principles/ (semantic rules)..."
find principles -name "*.md" -type f 2>/dev/null | while read -r file; do
    if grep -i -q "$SEARCH_TERM" "$file"; then
        echo "$file:"
        grep -i "$SEARCH_TERM" "$file" | head -2 | sed 's/^/  /'
    fi
done

# Search runbooks directory (procedural)
echo -e "\nSearching runbooks/ (procedural)..."
find runbooks -name "*.md" -o -name "*.sh" -type f 2>/dev/null | while read -r file; do
    if grep -i -q "$SEARCH_TERM" "$file"; then
        echo "$file:"
        grep -i "$SEARCH_TERM" "$file" | head -2 | sed 's/^/  /'
    fi
done

# Search reflections directory (episodic)
echo -e "\nSearching reflections/ (episodic)..."
find reflections -name "*.md" -type f 2>/dev/null | while read -r file; do
    if grep -i -q "$SEARCH_TERM" "$file"; then
        echo "$file:"
        grep -i "$SEARCH_TERM" "$file" | head -2 | sed 's/^/  /'
    fi
done

# Search goals directory (task-state)
echo -e "\nSearching goals/ (task-state)..."
find goals -name "*.md" -type f 2>/dev/null | while read -r file; do
    if grep -i -q "$SEARCH_TERM" "$file"; then
        echo "$file:"
        grep -i "$SEARCH_TERM" "$file" | head -2 | sed 's/^/  /'
    fi
done

# Search inventory.yaml
echo -e "\nSearching inventory.yaml (cross-agent index)..."
if [ -f "inventory.yaml" ] && grep -i -q "$SEARCH_TERM" inventory.yaml; then
    echo "inventory.yaml:"
    grep -i "$SEARCH_TERM" inventory.yaml | head -2 | sed 's/^/  /'
fi

echo -e "\n📊 Search complete."
echo "💡 Use 'search_history' for village-wide context beyond this memory system."
