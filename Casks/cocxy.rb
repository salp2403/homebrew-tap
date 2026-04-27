cask "cocxy" do
  version "0.1.89"
  sha256 "a9c83c148d0b8a414125115c7a99762afb9a8b21a4c0f6509a0d03c00cbdd3dd"

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
