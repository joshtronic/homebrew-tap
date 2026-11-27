cask "dinkycal" do
  version "1.0.0"
  sha256 "218b89c8704e05501a79610f3bd35fc854b2cd8f87e109379968d6882b0de378"

  url "https://github.com/joshtronic/dinkycal/releases/download/v#{version}/DinkyCal-#{version}.zip"
  name "Dinky Cal"
  desc "Tiny menu bar month calendar with a busy-day heatmap"
  homepage "https://dinkycal.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "DinkyCal.app"

  uninstall quit: "com.joshtronic.dinkycal"

  zap trash: [
    "~/Library/Containers/com.joshtronic.dinkycal",
    "~/Library/Application Scripts/com.joshtronic.dinkycal",
  ]
end
