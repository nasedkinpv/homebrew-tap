class Numr < Formula
  desc "Text calculator for natural language expressions with a vim-style TUI"
  homepage "https://github.com/nasedkinpv/numr"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nasedkinpv/numr/releases/download/v#{version}/numr-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "54baff10f85f0884f25759b82c505fcf49478b98b6d6691131cbca3e343b191a"
    end
    on_intel do
      url "https://github.com/nasedkinpv/numr/releases/download/v#{version}/numr-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7f6f49eaa0cce003fbf523f703bce88230c5dee434e7f3f65256ef24ab393036"
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
