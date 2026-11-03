cask "numr-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "689840787e527ecc2bd287b7d57119d3a97b7ceffd0dab2606df9e9a2825dd34",
         intel: "51cc03445facd96aebc1ab4c0ee734ec6fdefdeca09db6bc08d84f05c43a0498"

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
