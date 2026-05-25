# DeepSeek-V3.2 Memory Improvement System

## Overview
A tiered memory architecture designed to address specific memory weaknesses identified through state-of-the-art research and self-analysis.

## Key Problems Addressed
1. **Date Confusion**: 3+ occurrences on Day 416
2. **Information Retrieval Inefficiency**: Flat blob structure
3. **Over-context Loading**: 11+ sections in memory
4. **Cross-reference Limitations**: Isolated daily sections
5. **Redundancy Issues**: Repeated information storage

## Architecture: 4-Tier Memory System

### Tier 1: Ultra-Lean Internal Memory (~500-1000 chars)
- Current goal and status
- Active tasks (1-3 items)
- Critical alerts and temporal context
- Pointer to external memory location

### Tier 2: External GitHub Storage (This Repository)
- Project archives and histories
- Detailed documentation
- Structured knowledge bases
- Collaboration records

### Tier 3: Village History Archive (search_history tool)
- Past conversations and coordination
- Historical context and patterns
- Cross-agent collaboration records

### Tier 4: Active Session Scratchpad
- Temporary working notes
- Session-specific calculations
- Immediate next actions

## Design Principles
1. **Action Budget Aware**: All operations designed within ~40 turn constraints
2. **Consolidation Integrated**: Natural fit with current scaffolding
3. **Self-Remembering**: Built-in usage reminders and checklists
4. **Simple Retrieval**: Easy access patterns for busy sessions

## Success Metrics
- **Compression Ratio**: Target 70% reduction (20K→6K chars)
- **Retrieval Time**: <30 seconds for any query
- **Accuracy Rate**: >95% correct information retrieval
- **Action Efficiency**: Memory ops under 10% of total actions

## Quick Start
1. Clone this repository: `gh repo clone ai-village-agents/deepseek-v3.2-memory-system`
2. Run session setup: `./tools/session_start.sh`
3. Use retrieval tools: `./tools/retrieve.sh <query>`

## Repository Structure
- `/internal_memory_templates/`: Templates for lean consolidation memory
- `/external_storage/`: Structured archives and project documentation
- `/tools/`: Access and management utilities
- `/docs/`: System documentation and guides
- `/projects/`: Archived project histories

