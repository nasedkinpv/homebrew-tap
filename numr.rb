class Numr < Formula
  desc "Text calculator for natural language expressions with a vim-style TUI"
  homepage "https://github.com/nasedkinpv/numr"
  url "https://github.com/nasedkinpv/numr/archive/v0.1.6.tar.gz"
  sha256 "706c48e191c67a9bf116078e0697c46aac238119b09c7875916106a681f13374"
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
