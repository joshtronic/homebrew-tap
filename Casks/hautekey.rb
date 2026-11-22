cask "hautekey" do
  version "1.0.0"
  sha256 "b61c5dceb0ee46a6ce3230f88c6038935779392fe3e76c32835d9eac15f09574"

  url "https://github.com/joshtronic/hautekey/releases/download/v#{version}/HauteKey-#{version}.zip"
  name "Haute Key"
  desc "Hyper key: tap for Spotlight, hold for apps and window snapping"
  homepage "https://hautekey.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Haute Key.app"

  uninstall quit: "com.joshtronic.hautekey"

  zap trash: [
    "~/.config/hautekey",
    "~/Library/Preferences/com.joshtronic.hautekey.plist",
  ]
end
