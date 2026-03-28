cask "cocxy" do
  version "0.1.11"
  sha256 "2eeabe4a2135d6d46a40882188369f997b35a65ab6da453646d89adbfd15ed5c"

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
