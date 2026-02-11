# 🌌 Antigravity Skills Library

Welcome to the official repository for **Antigravity Skills**, engineered for high-performance agentic coding and deep codebase intelligence. These skills are optimized for the **Antigravity** agent by Google DeepMind.

## 🚀 Installation

To install a specific skill directly into your **Antigravity** environment, run the following one-liner:

```bash
# Example: Installing the codebase-helper skill
curl -sSL https://raw.githubusercontent.com/julio/antigravity-skills/main/install.sh | bash -s codebase-helper
```

### Manual Installation (Standard Path)

If you prefer manual installation, clone the skill folder into the **Antigravity** standard skills directory:

```bash
# Standard path for Antigravity project agents
DEST_DIR=".agent/skills"
mkdir -p $DEST_DIR

# Clone and move (sparse checkout mode recommended for large libraries)
git clone --depth 1 https://github.com/julio/antigravity-skills.git /tmp/antigravity-skills
cp -r /tmp/antigravity-skills/skills/codebase-helper $DEST_DIR/
rm -rf /tmp/antigravity-skills
```

## 🛠️ Available Skills

| Skill | Description |
| :--- | :--- |
| **[codebase-helper](./skills/codebase-helper)** | Deep analysis and resolution of complex codebase questions. |

## 📜 Development protocol

All skills in this repository adhere to the [AGENT_SKILL_PROTOCOL_v1](./skills/guidelines.md), ensuring:
- **Machine-Optimized Parsing**: Designed for direct agent consumption.
- **Deterministic Workflows**: Predictable, multi-step code reasoning.
- **Token Efficiency**: Externalized knowledge via `references/`.

---
*Created by [Antigravity](https://deepmind.google/technologies/gemini/) - Advanced Agentic Coding*
