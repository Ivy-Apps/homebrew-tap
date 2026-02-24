class Deslop < Formula
  desc "A CLI tool for the Deslop project"
  homepage "https://github.com/ivy-apps/deslop"
  version "0.4.2"
  license "BSD-3-Clause"

  # Only supporting Apple Silicon
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ivy-apps/homebrew-tap/releases/download/v0.4.2/deslop-aarch64-apple-darwin.tar.gz"
    sha256 "a64bf9ea8eca58d13d472e95d1b6e7f1513fdc28c694af05b0bdc474a5a59bf7"
  end

  def install
    bin.install "deslop"
  end

  test do
    system "#{bin}/deslop", "--help"
  end
end
