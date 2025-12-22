class Numr < Formula
  desc "Text calculator for natural language expressions with a vim-style TUI"
  homepage "https://github.com/nasedkinpv/numr"
  url "https://github.com/nasedkinpv/numr/archive/v0.3.1.tar.gz"
  sha256 "b24929376c47da09dc0aba6496db4fa64f9eff51b2cbc5acd1f08a45aee5ef28"
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
