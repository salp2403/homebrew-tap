cask "cocxy" do
  version "1.0.3"
  sha256 "dff48adb537a9b656c7131e6932f2b328a6309aee1b262dec2288e54c0afd687"

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
