#!/usr/bin/env bash
set -euo pipefail

REPO="thaothe37na/homebrew-douyingo-releases"

echo "==> Installing DouyinGo via Homebrew..."
brew install "$REPO/douyingo"

echo "==> Removing macOS quarantine flag..."
xattr -dr com.apple.quarantine /Applications/DouyinGo.app

echo "==> Creating desktop launcher..."
LAUNCHER="$HOME/Desktop/DouyinGo.command"
cat > "$LAUNCHER" << 'EOF'
#!/bin/bash
# DouyinGo launcher - opens the app from Terminal
# (Required on macOS 15+ for ad-hoc signed apps)
cd "$(dirname "$0")"
/Applications/DouyinGo.app/Contents/MacOS/douyin-downloader
EOF
chmod +x "$LAUNCHER"

echo ""
echo "==========================================="
echo "  DouyinGo installed!"
echo "==========================================="
echo ""
echo "  Due to macOS security restrictions on"
echo "  unsigned apps (macOS 15+ Sequoia), you"
echo "  need to launch DouyinGo from Terminal"
echo "  for the first time:"
echo ""
echo "  Method 1: Double-click DouyinGo.command"
echo "            on your Desktop"
echo ""
echo "  Method 2: Run from Terminal:"
echo "    /Applications/DouyinGo.app/Contents/MacOS/douyin-downloader"
echo ""
echo "  After the first launch, you can use"
echo "  the app normally via Cmd+H / Cmd+Q."
echo "==========================================="
