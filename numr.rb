class Numr < Formula
  desc "Text calculator for natural language expressions with a vim-style TUI"
  homepage "https://github.com/nasedkinpv/numr"
  url "https://github.com/nasedkinpv/numr/archive/v0.1.5.tar.gz"
  sha256 "ef2bc8641cdacf58d801c4d8a553a4c2961ee32abba37efd729c0891ff3eead9"
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
