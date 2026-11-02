cask "numr-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "160bd299d31d28f37171b8fdd7a6a98c30ada66dc9b34fcfe09581d3a19d6b24",
         intel: "cbc467266fefae80e9aa6970fc984a8bc1eeea3c4eb66b569e6b9a814b98a5cb"

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
