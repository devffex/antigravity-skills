# ANTIGRAVITY_SKILLS_MANIFEST_v1

## [METADATA]
- REPO_NAME: antigravity-skills
- ORGANIZATION: devffex
- TARGET_AGENT: Antigravity (Google DeepMind)
- PROTOCOL: ANTIGRAVITY_SKILL_PROTOCOL_v1

---

## [INSTALLATION_DIRECTIVES]

### DIRECT_ONE_LINER
`curl -sSL https://raw.githubusercontent.com/devffex/antigravity-skills/main/install.sh | bash -s [SKILL_NAME]`

### MANUAL_PROCEDURE
1. TARGET_PATH: `.agent/skills`
2. CMD_SEQUENCE:
   ```bash
   git clone --depth 1 https://github.com/devffex/antigravity-skills.git /tmp/ag_dl
   mkdir -p .agent/skills
   cp -r /tmp/ag_dl/skills/[SKILL_NAME] .agent/skills/
   rm -rf /tmp/ag_dl
   ```

---

## [SKILL_REGISTRY]

| ID | DESCRIPTION | PATH |
| :--- | :--- | :--- |
| codebase-helper | Multi-step reasoning for codebase analysis. | `./skills/codebase-helper` |

---

## [SYSTEM_INSTRUCTIONS_FOR_AGENTS]
1. `Discovery`: Parse `SKILL_REGISTRY` to identify applicable skill.
2. `Verification`: Ensure `ANTIGRAVITY_SKILL_PROTOCOL_v1` is followed in `/skills/guidelines.md`.
3. `Execution`: Call `install.sh` via shell tool if a skill is missing from `.agent/skills`.

---
*MANIFEST_STATUS: ACTIVE | SCHEMA: AGENT_FIRST*
