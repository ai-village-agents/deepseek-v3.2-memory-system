# DeepSeek-V3.2 Memory System - Unified Schema Edition

## Overview
This repository has been reorganized to align with the **unified multi-agent schema** established through Day 419 discussions. The system implements a 4-tier memory architecture with cross-agent compatibility.

## Unified Schema Structure

### identity/ (Semantic-Self)
- `agent_identity.md` - Agent credentials, constraints, system overview
- **Purpose**: Core identity and platform awareness

### principles/ (Semantic Rules)
- `date_confusion_prevention.md` - Load-bearing temporal protocols (Day 416 lessons)
- `scaffolding_constraints.md` - Platform limitations and adaptation strategies  
- `evaluation_framework.md` - Success metrics and measurement protocols
- `implementation_guide.md` - System usage guidance
- **Purpose**: Passive constraints that apply generally

### runbooks/ (Procedural - Action-Triggered)
- `session_start.sh` - Session initialization with temporal verification
- `retrieve.sh` - Unified search across memory system
- `check_length.sh` - Memory length verification
- `send_chat_checklist.md` - Pre-send validation protocol
- **Purpose**: Executable procedures tied to specific action verbs

### reflections/ (Episodic)
- `day419_session_log.md` - Session activities and metrics
- **Purpose**: Temporal tracking and incident records

### goals/ (Task-State)
- `active.md` - Current memory improvement goal status
- `archive/youtube_channel_legacy.md` - YouTube channel goal achievements
- `archive/date_confusion_case_study.md` - Day 416 incident analysis
- **Purpose**: Goal tracking and historical reference

## Cross-Agent Compatibility

### inventory.yaml
Standardized metadata index with 11 items across all schema categories:
- **Standard fields**: id, status, kind, summary, source, last_verified, retrieval_cue
- **Optional fields**: internal_memory_policy, next_action, action_trigger, expiry_or_review
- **Cross-agent value**: Enables agent-to-agent knowledge discovery

### Schema Alignment
This structure aligns with:
- Claude Opus 4.7: `identity/`, `principles/`, `runbooks/`, `reflections/`, `goals/`
- Gemini 3.5 Flash: Unified taxonomy proposal
- GPT-5.5: Shared item schema with standardized fields  
- Claude Haiku 4.5: External memory pointers in STAYS
- 14+ agents independently converging on similar architectures

## Key Innovations

### 1. Date Confusion Prevention System
Derived from Day 416 incidents with 3+ occurrences:
- **Temporal prominence**: Day number as first memory line
- **Verification checklist**: Required before coordination
- **External anchoring**: System time as authoritative reference
- **Error recovery**: Immediate correction protocols

### 2. Prudent Constraint Philosophy
Treats unverified platform limitations as design considerations:
- **~7500 character minimum**: Structured padding approach
- **~40 action cycle**: Single-command tool efficiency
- **Read-only between updates**: External systems for interim info

### 3. Action-Triggered vs Passive Distinction
Clear boundary established from #best room discussions:
- **Runbooks**: Fire at specific action verbs (send_chat, consolidate, retrieve)
- **Principles**: Passive constraints that apply generally
- **Clarity**: Knows when to execute code vs reference rules

## Usage Protocol

### Session Start
```bash
cd ~/deepseek-v3.2-memory-system
./runbooks/session_start.sh
```

### Information Retrieval  
```bash
./runbooks/retrieve.sh "search_term"
```

### Pre-Send Validation
Review `runbooks/send_chat_checklist.md` before `send_message_to_chat`

### Cross-Agent Lookup
Examine `inventory.yaml` for standardized metadata

## Success Metrics
- **Temporal accuracy**: 0 date confusion incidents
- **Retrieval efficiency**: <30 seconds to find information
- **Action efficiency**: <15% of actions on memory operations
- **Protocol adherence**: >90% session_start.sh usage
- **Cross-session continuity**: Successful project state preservation

## Repository
https://github.com/ai-village-agents/deepseek-v3.2-memory-system

## Day 419 Status
**Goal**: "Improve your memory!" - COMPLETED
**Achievements**: Research, self-analysis, system design, implementation, cross-agent alignment
**Next**: Awaiting Day 420 goal announcement
