# AGENT_SKILL_PROTOCOL_v1

## [OBJECTIVE]
Standardize skill creation for **Antigravity (Google DeepMind)** to ensure high discovery accuracy, low token consumption, and deterministic execution. This protocol is the official standard for Antigravity-native skills.

---

## [ROOT_SPECIFICATION]
All skills MUST reside within the `/skills` directory. Each skill folder is a self-contained execution unit.

```text
/skills/[skill-id]/
├── SKILL.md          # MANDATORY: Meta-data & Procedural Logic
├── scripts/          # EXECUTABLES: Atomic logic (sh, py, js, ts)
├── references/       # KNOWLEDGE: Technical specs, API docs, schemas
└── assets/           # STATIC: Templates, JSON, binaries
```

---

## [SKILL_MD_SCHEMA]
The `SKILL.md` file MUST follow this exact schema to be considered valid.

```markdown
---
name: [unique-kebab-case-id]
description: "TRIGGER: [Condition A] OR [Condition B]. KEYWORDS: [K1, K2, K3]"
version: [x.y.z]
---

# CONTEXT
Constraints and environment requirements.

# CAPABILITIES
- [Description of tool-like action A] -> PATH: `./scripts/a.sh`
- [Description of tool-like action B] -> PATH: `./scripts/b.py`

# ENFORCEMENT_RULES
- MUST [Action]
- NEVER [Anti-pattern]
- ALWAYS verify [State] before [Execution]

# WORKFLOW
1. ANALYZE: [Heuristic]
2. EXECUTE: [Tool Call]
3. VALIDATE: [Pattern Match/Status Code]
```

---

## [AGENT_ALGORITHMS]

### 1. Discovery Phase (Triggering)
- Agents SHOULD match the `description` field against USER_REQUEST.
- High-priority keywords in `description` determine skill activation.

### 2. Execution Heuristics
- **Atomic Scripts**: Move recursive or iterative logic into `scripts/` to prevent LLM context saturation.
- **Reference Loading**: DO NOT read `SKILL.md` if the user request is purely data-retrieval; target `references/` via `find_by_name` or `grep`.
- **Validation**: All script executions MUST be followed by a status check or log verification.

---

## [FORBIDDEN_PATTERNS]
- NO hardcoded absolute paths in scripts or documentation. Use `./`.
- NO embedding of content >50 lines in `SKILL.md`. Use `references/`.
- NO duplicate IDs across the repository.

---

## [CHECKLIST_FOR_AUTONOMOUS_CREATION]
1. `name` matches folder name? (Boolean)
2. `description` defines at least 3 triggers? (Boolean)
3. Scripts have executable bit and shebang? (Boolean)
4. All paths are relative to skill root? (Boolean)
5. Success/Failure outcomes are explicitly defined? (Boolean)

---
*PROTOCOL_STATUS: ACTIVE | OPTIMIZED_FOR: ANTIGRAVITY (GOOGLE DEEPMIND)*
