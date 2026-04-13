cask "cocxy" do
  version "0.1.60"
  sha256 "5423f747bdf1a23f385534f42bf0daa2a1e8bfc610c9f2cdeb712b6cd2d6fa5c"

  url "https://github.com/salp2403/cocxy-terminal/releases/download/v#{version}/CocxyTerminal-#{version}.dmg"
  name "Cocxy Terminal"
  desc "Native macOS terminal built for AI agent workflows"
  homepage "https://cocxy.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Cocxy Terminal.app"

  binary "#{appdir}/Cocxy Terminal.app/Contents/Resources/cocxy"

  zap trash: [
    "~/.config/cocxy",
    "~/Library/Preferences/dev.cocxy.terminal.plist",
    "~/Library/Caches/dev.cocxy.terminal",
  ]
end
