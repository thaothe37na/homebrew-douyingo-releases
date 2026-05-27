#!/usr/bin/env bash
set -euo pipefail

REPO="thaothe37na/homebrew-douyingo-releases"

echo "==> Installing DouyinGo via Homebrew..."
brew install "$REPO/douyingo"

echo "==> Removing macOS quarantine flag..."
xattr -dr com.apple.quarantine /Applications/DouyinGo.app

echo "==> Launching DouyinGo..."
open -a DouyinGo

echo ""
echo "Done! DouyinGo should now be running."
echo "If the app doesn't open, right-click DouyinGo.app in Applications and select Open."
