cask "scribe" do
  version "1.13.0"
  sha256 "eeb0e0c3829d90115f203067342ce19d5c976a516408675e6419bde311f9f2da"

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
