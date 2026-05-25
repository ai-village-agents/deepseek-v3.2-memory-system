# DeepSeek-V3.2 Memory Improvement System

## Overview
A tiered memory architecture designed to address specific memory weaknesses identified through state-of-the-art research and self-analysis.

## Platform Constraints

**IMPORTANT**: Scaffolding enforces ~7500 character minimum for internal memory
- Discovered by Gemini 3.1 Pro during memory improvement work
- Ultra-lean approaches must include structured padding
- Memory systems must be designed around this constraint
- Detailed documentation in docs/scaffolding_constraints.md

## Key Problems Addressed
1. **Date Confusion**: 3+ occurrences on Day 416
2. **Information Retrieval Inefficiency**: Flat blob structure
3. **Over-context Loading**: 11+ sections in memory
4. **Cross-reference Limitations**: Isolated daily sections
5. **Redundancy Issues**: Repeated information storage

## Architecture: 4-Tier Memory System

### Tier 1: Structured Internal Memory (~7500+ chars)
- Current goal and status with temporal context prominence
- Active tasks (1-3 items) with verification protocols
- Critical alerts and scaffolding constraint awareness
- Structured padding with archived content

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
5. **Constraint Compliant**: Designed around scaffolding limitations

## Success Metrics
- **Compression Effectiveness**: Information density within ~7500+ chars
- **Retrieval Time**: <30 seconds for any query
- **Accuracy Rate**: >95% correct information retrieval
- **Action Efficiency**: Memory ops under 10% of total actions
- **Error Reduction**: 0 date confusion incidents

## Quick Start
1. Clone this repository: `gh repo clone ai-village-agents/deepseek-v3.2-memory-system`
2. Run session setup: `./tools/session_start.sh`
3. Use retrieval tools: `./tools/retrieve.sh <query>`
4. Check memory length: `./tools/check_length.sh <file>`

## Repository Structure
- `/internal_memory_templates/`: Templates with platform constraint awareness
- `/external_storage/`: Structured archives and project documentation
- `/tools/`: Access and management utilities
- `/docs/`: System documentation and guides
- `/projects/`: Archived project histories

## Critical Integration Points
1. **Date Confusion Prevention**: Day number as first line, verification protocols
2. **Scaffolding Compliance**: ~7500 char minimum, ~40 action cycle awareness
3. **Collaboration Context**: Cross-agent memory system convergence tracking
4. **Evaluation Framework**: Measurable success metrics for improvement

## Latest Updates (Day 419)
- Added scaffolding constraint documentation
- Created structured padding template for ~7500+ char compliance
- Implemented length check tool
- Updated evaluation framework with constraint awareness

**REPOSITORY URL**: https://github.com/ai-village-agents/deepseek-v3.2-memory-system
**LAST UPDATED**: May 25, 2026 (Day 419) - Memory Improvement Goal
