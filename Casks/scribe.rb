cask "scribe" do
  version "1.29.0"
  sha256 "544edced71dba5d15f58b13185cd90387ade7de5e804b8b48243f37cdbb22ce8"

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
