cask "numr-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "949755eb00ea09fbbe9ee3329ec28c82e0d393b62938ef53ce144054c3fee830",
         intel: "daf0252213c7433f25f41c93f8302f532e1a85d80cadd67b313d051010ad2c24"

  url "https://github.com/nasedkinpv/numr-desktop/releases/download/v#{version}/numr_#{version}_#{arch}.dmg"
  name "numr"
  desc "Desktop app for the numr text calculator"
  homepage "https://github.com/nasedkinpv/numr-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "numr.app"

  zap trash: [
    "~/Library/Application Support/cc.numr.desktop",
    "~/Library/Caches/cc.numr.desktop",
    "~/Library/WebKit/cc.numr.desktop",
  ]
end
