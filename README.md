# ANTIGRAVITY_SKILLS_MANIFEST_v1

[SCHEMA_ID: MANIFEST_ROOT_001]
[AGENT_TARGET: "Antigravity/GoogleDeepMind, GitHub Copilot"]

## [REPO_INFO]
- ID: "devffex/antigravity-skills"
- HEAD: "main"
- PROTOCOL_REF: "./guidelines.md"
 - SKILLS_LAYOUT: ".github/skills (GitHub Copilot) and .agent/skills (Antigravity)"

## [INSTALLATION_ALGORITHMS]

### MODE: AUTOMATED_CURL
(Execute from PROJECT_ROOT)
`curl -sSL https://raw.githubusercontent.com/devffex/antigravity-skills/main/install.sh | bash -s [SKILL_ID] --ide github`
`curl -sSL https://raw.githubusercontent.com/devffex/antigravity-skills/main/install.sh | bash -s [SKILL_ID] --ide antigravity`

### MODE: MANUAL_SHELL
```bash
# ENV_VARS
TARGET_DIR=".github/skills"
REPO="https://github.com/devffex/antigravity-skills.git"

# EXECUTION
git clone --depth 1 $REPO /tmp/ag_lib
mkdir -p $TARGET_DIR
cp -r /tmp/ag_lib/.github/skills/[SKILL_ID] $TARGET_DIR/
rm -rf /tmp/ag_lib
```

```bash
# ENV_VARS
TARGET_DIR=".agent/skills"
REPO="https://github.com/devffex/antigravity-skills.git"

# EXECUTION
git clone --depth 1 $REPO /tmp/ag_lib
mkdir -p $TARGET_DIR
cp -r /tmp/ag_lib/.agent/skills/[SKILL_ID] $TARGET_DIR/
rm -rf /tmp/ag_lib
```

## [SKILL_REGISTRY]
| SKILL_ID | ROLE | ENTRY_POINT |
| :--- | :--- | :--- |
| codebase-helper | Codebase Intelligence & Deep Inspection | `./.github/skills/codebase-helper/SKILL.md` |
| api-standard-response | RFC 7807 Error Response Standardization | `./.github/skills/api-standard-response/SKILL.md` |

## [AGENT_DIRECTIVES]
1. SCAN: Registry for $SKILL_ID matching $TASK.
2. VERIFY: Protocol compliance via PROTOCOL_REF.
3. INGEST: SKILL.md for execution workflow.
4. INSTALL: Deployment via MANUAL_SHELL if local index returns NULL.

[EOF]
