# DouyinGo Releases

Binary releases and Homebrew Cask formula for [DouyinGo](https://github.com/thaothe37na/douyin-downloader), a Douyin (TikTok China) batch downloader desktop app.

## Installation

### macOS (Homebrew)

**One-liner:**
```bash
curl -fsSL https://raw.githubusercontent.com/thaothe37na/homebrew-douyingo-releases/main/install.sh | bash
```

Or manually:
```bash
brew install thaothe37na/homebrew-douyingo-releases/douyingo
xattr -dr com.apple.quarantine /Applications/DouyinGo.app
open -a DouyinGo
```

### Windows

Download the latest `.msi` from [Releases](https://github.com/thaothe37na/homebrew-douyingo-releases/releases), then double-click to install.

### Linux (Debian/Ubuntu)

```bash
curl -LO https://github.com/thaothe37na/homebrew-douyingo-releases/releases/latest/download/DouyinGo_x64.deb
sudo dpkg -i DouyinGo_x64.deb
```

---

## Available Downloads

Each release includes:

| Platform | Architecture | Format |
|----------|-------------|--------|
| macOS    | Apple Silicon (M1+) | `.dmg` |
| macOS    | Intel (x86_64) | `.dmg` |
| Windows  | x86_64 | `.msi` |
| Linux    | x86_64 | `.deb` / `.AppImage` |
