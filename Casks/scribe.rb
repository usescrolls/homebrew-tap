cask "scribe" do
  version "0.0.9"
  sha256 "094286c37aa713f2b3f4be14cee435f178b4a5e26abb2e6c2e400a4dff374983"

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
