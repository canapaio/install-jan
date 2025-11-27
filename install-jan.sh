#!/bin/bash
# install-jan.sh – Automatically download and install the latest Jan .deb package on Linux
# Supports Debian/Ubuntu and derivatives.
# Author: Canapaio, Luna (Qwen3)
# Repository: https://github.com/canapaio/install-jan

set -e  # Exit immediately if a command exits with a non-zero status

echo "🔍 Fetching the latest Jan release from GitHub..."

# Get the latest release tag (e.g., v0.7.3)
LATEST_TAG=$(curl -s "https://api.github.com/repos/janhq/jan/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

if [ -z "$LATEST_TAG" ]; then
  echo "❌ Failed to retrieve the latest release tag from GitHub."
  exit 1
fi

echo "📦 Looking for a .deb package in release: $LATEST_TAG"

# Fetch the release assets and extract the .deb download URL (pattern: Jan_*_amd64.deb)
DEB_URL=$(curl -s "https://api.github.com/repos/janhq/jan/releases/tags/$LATEST_TAG" \
  | grep -o '"browser_download_url":\s*"[^"]*Jan_[^"]*amd64\.deb"' \
  | head -n1 \
  | sed -E 's/.*"([^"]*Jan_[^"]*amd64\.deb)"[^"]*/\1/' \
  | tr -d '[:space:]')

if [ -z "$DEB_URL" ]; then
  echo "❌ No .deb package found for release $LATEST_TAG."
  echo "   Please check manually: https://github.com/janhq/jan/releases/tag/$LATEST_TAG"
  exit 1
fi

DEB_FILE=$(basename "$DEB_URL" | tr -d ' ')
echo "📥 Downloading: $DEB_FILE"
curl -L -o "./$DEB_FILE" "$DEB_URL"

echo "📦 Installing with apt (resolving dependencies automatically)..."
sudo apt install -y ./"$DEB_FILE"

echo "✅ Jan $LATEST_TAG has been successfully installed!"
echo "💡 You can now launch Jan by typing:  jan"
