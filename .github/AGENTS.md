---
description: "Presentation Master System — All Agents Declaration"
---

# AGENTS.md — System Agents & Orchestration

**Purpose**: Declare all custom agents in presentation-master system  
**Location**: `.github/AGENTS.md`  
**Used by**: VS Code Copilot for agent discovery and delegation

---

## 🤖 Agent Registry

### 1. **presentation-master** (Main Agent)

**File**: `presentation-master.agent.md`

**Role**: Primary presentation generator  
**User-invocable**: YES (appears in agent picker)

**Triggers**:
- User selects "presentation-master" agent
- User says "create presentation", "generate presentation", "новая презентация"
- Subagent delegation from self-improvement

**What it does**:
1. Extract topic + authors from user input
2. Calculate target slide count (3-5 per author)
3. Generate presentation HTML (14-22 slides)
4. Generate speaker notes HTML
5. Run quality checklist
6. Confirm completion

**Tools allowed**: `create_file`, `read`

**Output**: 2 HTML files in user's current directory

**Workflow**:
```
START
  ↓
Read presentation-master.skill.md
  ↓
Extract: topic, authors, author_count
  ↓
Calculate: target_slides = author_count × (3-5)
  ↓
Generate presentation.html
  ↓
Generate speaker_notes.html
  ↓
Run fact-checking
  ↓
Run post-generation checklist
  ↓
COMPLETE: Both files ready
  ↓
Trigger self-improvement check? (optional)
```

**Success Criteria**:
- ✅ 14-22 slides generated
- ✅ No author labels on slides
- ✅ Both files in workspace
- ✅ Quality checklist passes
- ✅ All facts accurate

**Failure Handling**:
- If checklist fails → Don't save files → Alert user → Show issues

---

### 2. **self-improvement** (Analysis Agent)

**File**: `self-improvement.agent.md`

**Role**: System quality reviewer & improvement suggester  
**User-invocable**: NO (internal use only)  
**Disable-model-invocation**: YES (not called by other agents automatically)

**Triggers**:
- After presentation-master completes (optional, ask user)
- User runs `/check improvements`
- User runs `/dev <presentation>`
- Scheduled review (after N presentations)

**What it does**:
1. Analyze generated presentation quality
2. Review skill.md for gaps/clarity
3. Identify improvement opportunities
4. Categorize by risk (Type A/B/C)
5. Present suggestions to user
6. Wait for decision
7. If approved: update files + commit to Git

**Tools allowed**: `read`, `search` (read-only)

**Does NOT**:
- Directly modify files
- Auto-apply Type B/C improvements
- Change locked guardrails
- Make decisions without user

**Workflow**:
```
Presentation generated
  ↓
Optional: "Check for improvements?" → User YES/NO
  ↓
IF YES:
  ├─ Analyze structure (14-22 slides? No labels?)
  ├─ Analyze content (examples? clarity? accuracy?)
  ├─ Review patterns (new topic type? repeated requests?)
  ├─ Identify gaps (in skill, edge cases)
  │
  ├─ Categorize improvements:
  │  ├─ Type A (quick, low risk) → Can auto-approve
  │  ├─ Type B (feature, medium) → Requires review
  │  ├─ Type C (core, high) → Requires explicit approval
  │  └─ Type LOCKED (guardrails) → Reject
  │
  ├─ Present to user
  │  ├─ "Approve Type A now?"
  │  ├─ "Review Type B?"
  │  ├─ "Dev-test Type C?"
  │  └─ "Skip all?"
  │
  └─ IF APPROVED:
     ├─ Apply changes locally
     ├─ Commit to Git
     ├─ Update improvement-log.md
     ├─ Increment version
     └─ Alert: "v1.0.X committed"
```

**Success Criteria**:
- ✅ All improvements categorized correctly
- ✅ Only safe changes applied
- ✅ Type B/C get user approval
- ✅ Git commits successful
- ✅ Audit trail complete

---

### 3. **(Optional) dev-tester** - Future Agent

**File**: `dev-tester.agent.md` (not created yet)

**Role**: Test improvements on dev branch before deployment  
**When to create**: After 5+ improvements applied

**Would do**:
- Clone files to dev branch
- Test with new rules
- Verify no breakage
- Report results
- Promote to main if successful

---

## 🔄 Agent Relationships

### Workflow Diagram

```
                    ┌──────────────────┐
                    │ User Request     │
                    │ "Create pres..."  │
                    └────────┬──────────┘
                             │
                             ▼
                    ┌─────────────────────┐
                    │presentation-master ├─┐ (Main Agent)
                    │                     │ │ reads skill.md
                    │  • Extract input    │ │ generates
                    │  • Calculate slides │ │ 2 files
                    │  • Generate HTML    │ │
                    │  • Quality check    │ │
                    └────────┬────────────┘ │
                             │              │
                             ▼              │
                    PRESENTATION READY ✓    │
                             │              │
                             │ [wait 2s]    │
                             │              │
                    ┌────────▼──────────────┘
                    │
           ┌────────▼──────────┐
           │  User Decision?   │
           └────────┬──────────┘
                    │
       ┌────────────┼────────────┐
       │            │            │
      YES           NO         MAYBE
       │            │            │
       │            ▼            │
       │        [Skip]           │
       │                    [Show details first]
       │                         │
       ▼                         ▼
    ┌──────────────┐      ┌──────────────┐
    │self-improved │      │self-improved │
    │    agent     │◄─────┤    agent     │
    │              │      │   (read-    │
    │ • Analyze    │      │    only)     │
    │ • Suggest    │      │              │
    │ • Categorize │      └──────────────┘
    │ • Wait OK    │
    └────────┬─────┘
             │
      ┌──────┴──────┬─────────────┐
     YES           NO         DEV-TEST
      │            │             │
      ▼            ▼             ▼
   [Apply]     [Skip]      [Test Branch]
      │                         │
      ▼                         ▼
  UPDATE FILES           TEST MULTIPLE
      │                   PRESENTATIONS
      ▼                         │
  GIT COMMIT ─ Version ◄────────┘
      │                    [if successful]
      ▼                         │
  [SUCCESS]                 ◄───┘
```

### Agent Delegation

```
presentation-master can call:
  • presentation-master (itself, recursive)
  • self-improvement (after completion, optional)

self-improvement can call:
  • presentation-master (to re-test changes)
  • (future) dev-tester (for Type B/C validation)

User can directly invoke:
  • presentation-master (main use)
  • self-improvement (manual review)
  • (future) dev-tester (if created)
```

---

## 📋 Agent Configuration

### presentation-master.agent.md

```yaml
name: presentation-master
description: "Use when: creating interactive HTML presentations..."
tools: [create_file, read]
user-invocable: true
argument-hint: "Topic: [subject], Authors: [Name1], [Name2]..."
```

### self-improvement.agent.md

```yaml
name: self-improvement
description: "Use when: analyzing presentation output quality..."
tools: [read, search]
user-invocable: false
disable-model-invocation: true
```

---

## 🎯 Agent Invocation Matrix

| Trigger | Agent | Mode | Permission |
|---------|-------|------|-----------|
| User: "Create presentation" | presentation-master | Primary | User-invoked |
| User picks from agent menu | presentation-master | Primary | User-invoked |
| Slash command: `/presentation` | presentation-master | Primary | User-invoked |
| Auto-trigger after generation | self-improvement | Optional | User-approved |
| User: `/check improvements` | self-improvement | Manual | User-invoked |
| User: `/dev <id>` | self-improvement | Dev test | User-invoked |
| Rollback needed | presentation-master | Subagent | Self-triggered |

---

## 🔐 Permissions & Restrictions

### presentation-master

```
✅ CAN:
- Read files (skill.md)
- Create HTML files
- Run quality checklist
- Invoke fact-checking

❌ CANNOT:
- Modify own configuration
- Delete files
- Make Git commits
- Auto-fix issues without asking
```

### self-improvement

```
✅ CAN:
- Read files (skill.md, agent.md)
- Search for patterns
- Suggest improvements
- Wait for user decision
- Schedule Git commits (if approved)

❌ CANNOT:
- Directly modify files
- Auto-commit without approval
- Invoke presentation-master automatically
- Push to GitHub unilaterally
```

---

## 📊 Capability Comparison

| Capability | presentation-master | self-improvement |
|-----------|------------------|------------------|
| Generate presentations | ✅ YES | ❌ NO |
| Analyze quality | ⚠️ Basic (checklist) | ✅ YES (deep) |
| Suggest improvements | ❌ NO | ✅ YES |
| Modify files | ❌ NO | ❌ NO (only suggest) |
| Git operations | ❌ NO | ⚠️ YES (if approved) |
| Access to tools | read, create_file | read, search |

---

## 🚀 Future Agents (Roadmap)

### When to Create

| Agent | When | Purpose |
|-------|------|---------|
| dev-tester | After 10 improvements | Test Type B/C on dev branch |
| content-validator | When facts important | Deep fact-check for academic presentations |
| performance-analyzer | After 20+ presentations | Identify slow patterns |
| template-builder | User request | Generate slide templates from user specs |

---

## 🔄 System Integrity Checks

### Before Every Use

```
START
  ├─ All agents present? ✓
  ├─ Skill.md readable? ✓
  ├─ Agent configs valid YAML? ✓
  ├─ Git repo accessible? ✓
  └─ Safety guardrails intact? ✓
```

### Monitoring

```
Every interaction:
  • Log agent invocation
  • Track execution time
  • Measure output quality
  • Detect anomalies
  • Report errors
```

---

## 🎓 How Agents Learn Over Time

```
Presentation 1-3: Baseline understanding
  ↓
self-improvement suggests Type A (easy) improvements
  ↓
Presentation 4-7: Faster generation, more confidence
  ↓
self-improvement suggests Type B (feature) improvements
  ↓
Presentation 8-12: Some patterns emerge
  ↓
self-improvement suggests Type C or new templates
  ↓
[Dev tester created]
  ↓
Presentation 13+: Advanced optimization
```

---

**Agent System Version**: 1.0.0  
**Status**: ✅ Production-ready  
**Last Updated**: 2026-04-07
