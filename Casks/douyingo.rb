cask "douyingo" do
  version "2.0.0"

  on_arm do
    url "https://github.com/thaothe37na/douyingo-releases/releases/download/v#{version}/DouyinGo_#{version}_aarch64.dmg"
    sha256 "277aec27f46e34a70230810bba797a14d41e190932641e927dd3702cc2487704"
  end
  on_intel do
    url "https://github.com/thaothe37na/douyingo-releases/releases/download/v#{version}/DouyinGo_#{version}_x64.dmg"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  name "DouyinGo"
  desc "Douyin (TikTok China) batch downloader desktop app"
  homepage "https://github.com/thaothe37na/douyin-downloader"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "DouyinGo.app"

  zap trash: [
    "~/Library/Application Support/com.douyin-downloader.desktop",
    "~/Library/Saved Application State/com.douyin-downloader.desktop.savedState",
    "~/Library/Preferences/com.douyin-downloader.desktop.plist",
  ]
end
