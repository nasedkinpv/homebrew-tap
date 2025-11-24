class Numr < Formula
  desc "Text calculator for natural language expressions with a vim-style TUI"
  homepage "https://github.com/nasedkinpv/numr"
  url "https://github.com/nasedkinpv/numr/archive/v0.1.0.tar.gz"
  sha256 "690a38332d1f1e9965f6eef011ccded85ee122518a506285d95170ea14724a61"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--locked"
    bin.install "target/release/numr"
    bin.install "target/release/numr-cli"
  end

  test do
    assert_equal "30", shell_output("#{bin}/numr-cli '20% of 150'").strip
  end
end
