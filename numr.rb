class Numr < Formula
  desc "Text calculator for natural language expressions with a vim-style TUI"
  homepage "https://github.com/nasedkinpv/numr"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nasedkinpv/numr/releases/download/v#{version}/numr-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4496a84e13aec5f75658b730b2c1aee12b6d557b189ec9c271cef5291a2b839a"
    end
    on_intel do
      url "https://github.com/nasedkinpv/numr/releases/download/v#{version}/numr-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "99c957a838e7f5ef98d6a5aeba4d65168d5d6a65b75990e3ae5705994ecff6b4"
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
