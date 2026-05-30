# DouyinGo Releases

Binary releases and Homebrew Cask formula for [DouyinGo](https://github.com/thaothe37na/douyin-downloader), a Douyin (TikTok China) batch downloader desktop app.

## Installation

### macOS (Homebrew)

**One-liner:**
```bash
curl -fsSL https://raw.githubusercontent.com/thaothe37na/homebrew-douyingo-releases/main/install.sh | bash
```

> **Note:** On macOS 15+ (Sequoia), unsigned apps are restricted by Apple's security.
> The install script creates a `DouyinGo.command` launcher on your Desktop.
> **Double-click that file** to start DouyinGo (it opens Terminal briefly).

Or manually:
```bash
brew install thaothe37na/homebrew-douyingo-releases/douyingo
xattr -dr com.apple.quarantine /Applications/DouyinGo.app
/Applications/DouyinGo.app/Contents/MacOS/douyin-downloader
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
