#!/bin/bash

# Antigravity Skill Installer
# Usage: curl -sSL <URL>/install.sh | bash -s <skill-name>

SKILL_NAME=$1
REPO_URL="https://github.com/devffex/antigravity-skills.git"
DEST_DIR=".agent/skills"
TEMP_DIR="/tmp/antigravity-install-$(date +%s)"

if [ -z "$SKILL_NAME" ]; then
    echo "❌ Error: No skill name provided."
    echo "Usage: install.sh <skill-name>"
    exit 1
fi

echo "🚀 Installing Antigravity Skill: $SKILL_NAME..."

# Check dependencies
if ! command -v git &> /dev/null; then
    echo "❌ Error: git is not installed."
    exit 1
fi

# Clone the repository (sparse checkout)
mkdir -p "$TEMP_DIR"
cd "$TEMP_DIR" || exit

git clone --depth 1 --filter=blob:none --sparse "$REPO_URL" . &> /dev/null

# Try skills/ directory first, then fallback to root
if git sparse-checkout set "skills/$SKILL_NAME" &> /dev/null && [ -d "skills/$SKILL_NAME" ]; then
    SKILL_SOURCE="skills/$SKILL_NAME"
elif git sparse-checkout set "$SKILL_NAME" &> /dev/null && [ -d "$SKILL_NAME" ]; then
    SKILL_SOURCE="$SKILL_NAME"
else
    echo "❌ Error: Skill '$SKILL_NAME' not found in repository (checked /skills and root)."
    cd / && rm -rf "$TEMP_DIR"
    exit 1
fi

# Create destination directory
mkdir -p "$DEST_DIR"

# Move skill to destination
if [ -d "$DEST_DIR/$SKILL_NAME" ]; then
    echo "⚠️  Skill '$SKILL_NAME' already exists. Overwriting..."
    rm -rf "$DEST_DIR/$SKILL_NAME"
fi

mv "$SKILL_SOURCE" "$DEST_DIR/"

# Cleanup
cd / && rm -rf "$TEMP_DIR"

echo "✅ Success! '$SKILL_NAME' is now installed in $DEST_DIR"
echo "🔄 Reload your Antigravity agent or restart your IDE to activate."
