class Deslop < Formula
  desc "A CLI tool for the Deslop project"
  homepage "https://github.com/ivy-apps/deslop"
  version "0.4.0"
  license "BSD-3-Clause"

  # Only supporting Apple Silicon
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ivy-apps/homebrew-tap/releases/download/v0.4.0/deslop-aarch64-apple-darwin.tar.gz"
    sha256 "0badde83553f65c51aad6390b870f8ac0648801e9ec5ce9701a048577d3e9720"
  end

  def install
    bin.install "deslop"
  end

  test do
    system "#{bin}/deslop", "--help"
  end
end
