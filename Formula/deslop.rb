class Deslop < Formula
  desc "A CLI tool for the Deslop project"
  homepage "https://github.com/ivy-apps/deslop"
  version "0.3.3"
  license "BSD-3-Clause"

  # Only supporting Apple Silicon
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ivy-apps/homebrew-tap/releases/download/v0.3.3/deslop-aarch64-apple-darwin.tar.gz"
    sha256 "c09d38184a7891504f26436b64d13c30f6d681368783acac0c53068eba636d1b"
  end

  def install
    bin.install "deslop"
  end

  test do
    system "#{bin}/deslop", "--help"
  end
end
