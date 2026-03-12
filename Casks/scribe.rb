cask "scribe" do
  version "1.31.0"
  sha256 "9739572fa61a55c1d0dc4cb7d9e0075432b3beb38e74a74b644693f6e2910d20"

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
