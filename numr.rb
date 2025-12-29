class Numr < Formula
  desc "Text calculator for natural language expressions with a vim-style TUI"
  homepage "https://github.com/nasedkinpv/numr"
  version "0.4.0-rc3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nasedkinpv/numr/releases/download/v#{version}/numr-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2a9420f0e823e2e32bdc6f47a85663eefa56b476b04793b92e98336b5092cf36"
    end
    on_intel do
      url "https://github.com/nasedkinpv/numr/releases/download/v#{version}/numr-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f8564cce51afa026e988a7d92d02456dd2d02ac68a986d220bc3f142a6a26d70"
    end
  end

  def install
    bin.install "numr"
    bin.install "numr-cli"
  end

  test do
    assert_match "30", shell_output("#{bin}/numr-cli '20% of 150'").strip
  end
end
