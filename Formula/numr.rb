class Numr < Formula
  desc "Text calculator for natural language expressions with a vim-style TUI"
  homepage "https://github.com/nasedkinpv/numr"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nasedkinpv/numr/releases/download/v#{version}/numr-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1b8c2c91be95009ba5fc4a05b1ddf82e56bd4a95661eccdaff5336170432d618"
    end
    on_intel do
      url "https://github.com/nasedkinpv/numr/releases/download/v#{version}/numr-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "75135b9a44a6a92cb4213da95b641dc4b826326903fec0ce6e9101bb88f2311c"
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
