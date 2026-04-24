cask "cocxy" do
  version "0.1.84"
  sha256 "b39c9b01b6cdc9138a04f456b81dfdd592a2373785abbd9c216ba97bf05980c3"

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
