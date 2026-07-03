cask "opencode-status-bar" do
  version "1.1.3"
  sha256 "19f9b0c013a6943f1d7869d5208fe2244bc9bec5e7e660c5148d2a7f8cd3d46d"

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
