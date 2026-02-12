#!/bin/bash

# Skill Installer (Antigravity + GitHub Copilot)
# Usage: curl -sSL <URL>/install.sh | bash -s <skill-name> --ide <github|antigravity>

SKILL_NAME=""
IDE_TARGET="antigravity"
REPO_URL="https://github.com/devffex/antigravity-skills.git"
# Capture original directory
ORIG_DIR=$(pwd)

# Detect Project Root (Search for .git, .agent, or .github upwards)
find_root() {
    local dir="$1"
    while :; do
        if [ -d "$dir/.git" ] || [ -d "$dir/.agent" ] || [ -d "$dir/.github" ]; then
            echo "$dir"
            return
        fi
        [ "$dir" = "/" ] && break
        dir=$(dirname "$dir")
    done
    echo "$ORIG_DIR" # Default to current dir if no root found
}

usage() {
    echo "Usage: install.sh <skill-name> [--ide github|antigravity]"
}

while [ "$#" -gt 0 ]; do
    case "$1" in
        --ide)
            IDE_TARGET="$2"
            shift 2
            ;;
        --ide=*)
            IDE_TARGET="${1#*=}"
            shift 1
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            if [ -z "$SKILL_NAME" ]; then
                SKILL_NAME="$1"
                shift 1
            else
                echo "❌ Error: Unknown argument '$1'."
                usage
                exit 1
            fi
            ;;
    esac
done

PROJECT_ROOT=$(find_root "$ORIG_DIR")
TEMP_DIR="/tmp/skills-install-$(date +%s)"

if [ -z "$SKILL_NAME" ]; then
    echo "❌ Error: No skill name provided."
    usage
    exit 1
fi

case "$IDE_TARGET" in
    github)
        DEST_DIR="$PROJECT_ROOT/.github/skills"
        REPO_SKILLS_DIR=".github/skills"
        ;;
    antigravity)
        DEST_DIR="$PROJECT_ROOT/.agent/skills"
        REPO_SKILLS_DIR=".agent/skills"
        ;;
    *)
        echo "❌ Error: Unknown IDE target '$IDE_TARGET'."
        usage
        exit 1
        ;;
esac

echo "🚀 Installing Skill: $SKILL_NAME (target: $IDE_TARGET)..."

# Check dependencies
if ! command -v git &> /dev/null; then
    echo "❌ Error: git is not installed."
    exit 1
fi

# Clone the repository (sparse checkout)
mkdir -p "$TEMP_DIR"
cd "$TEMP_DIR" || exit

git clone --depth 1 --filter=blob:none --sparse "$REPO_URL" . &> /dev/null

# Try target skills directory first
if git sparse-checkout set "$REPO_SKILLS_DIR/$SKILL_NAME" &> /dev/null && [ -d "$REPO_SKILLS_DIR/$SKILL_NAME" ]; then
    SKILL_SOURCE="$REPO_SKILLS_DIR/$SKILL_NAME"
else
    echo "❌ Error: Skill '$SKILL_NAME' not found in repository at '$REPO_SKILLS_DIR'."
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

if ! mv "$SKILL_SOURCE" "$DEST_DIR/"; then
    echo "❌ Error: Failed to move skill to $DEST_DIR"
    cd / && rm -rf "$TEMP_DIR"
    exit 1
fi

# Cleanup
cd / && rm -rf "$TEMP_DIR"

echo "✅ Success! '$SKILL_NAME' is now installed in: $(realpath "$DEST_DIR")"
echo "🔄 Reload your IDE/agent to activate."
