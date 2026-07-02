cask "opencode-status-bar" do
  version "1.1.2"
  sha256 "c5ae1ec6eccca73c6dcbecc2fe0754667135a59b9e9a2f4d29043df76d8c3f16"

  url "https://github.com/ardith666/opencode-status-bar/releases/download/v#{version}/OpenCodeStatusBar-#{version}.dmg",
      verified: "github.com/ardith666/opencode-status-bar/"
  name "OpenCode Status Bar"
  desc "macOS menu bar app that shows OpenCode live status at a glance"
  homepage "https://github.com/ardith666/opencode-status-bar"

  depends_on macos: :monterey

  app "OpenCodeStatusBar.app"

  uninstall quit: "com.local.opencodestatusbar"

  zap trash: [
    "~/.config/opencode/statusbar",
    "~/.config/opencode/plugins/statusbar.ts",
    "~/Library/Preferences/com.local.opencodestatusbar.plist",
    "~/Library/Saved Application State/com.local.opencodestatusbar.savedState",
  ]
end
