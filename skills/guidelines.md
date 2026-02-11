# 🤖 ANTIGRAVITY_SKILL_PROTOCOL_v1

## [OBJECTIVE]
Standardize skill creation for **Antigravity (Google DeepMind)** to ensure high discovery accuracy, low token consumption, and deterministic execution.

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
The `SKILL.md` file MUST follow this exact schema.

```markdown
---
name: [unique-kebab-case-id]
description: "TRIGGER: [Condition A] OR [Condition B]. KEYWORDS: [K1, K2, K3]"
version: [x.y.z]
---

# CONTEXT
Constraints and environment requirements.

# CAPABILITIES
- [Action A] -> PATH: `./scripts/a.sh`
- [Action B] -> PATH: `./scripts/b.py`

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
1. `Discovery`: Match `description` against USER_REQUEST.
2. `Optimization`: Move logic to `scripts/` to save context tokens.
3. `Persistence`: Use relative paths `./` only.

---
*PROTOCOL_STATUS: ACTIVE | OPTIMIZED_FOR: ANTIGRAVITY*
