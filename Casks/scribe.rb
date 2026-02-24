cask "scribe" do
  version "1.26.0"
  sha256 "7b5f85009fefa7477d7e27982d1e7d4e1075a628d1294727caab440561dc4f0c"

  url "https://github.com/usescrolls/scribe/releases/download/v#{version}/scribe-Installer.dmg",
      verified: "github.com/usescrolls/scribe/"
  name "Scribe"
  desc "One-click plugin installation for Claude Code"
  homepage "https://usescrolls.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Scribe.app"
  binary "#{appdir}/Scribe.app/Contents/MacOS/scribe"

  zap trash: [
    "~/.scribe",
    "~/Library/Preferences/dev.scribe.plist",
  ]
end
