cask "scribe" do
  version "1.0.0"
  sha256 "REPLACE_WITH_SHA256"

  url "https://github.com/usescrolls/scribe/releases/download/v#{version}/scribe-Installer.dmg"
  name "Scribe"
  desc "One-click plugin installation for Claude Code"
  homepage "https://usescrolls.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Scribe.app"

  zap trash: [
    "~/.scribe",
    "~/Library/Preferences/dev.scribe.plist",
  ]
end
