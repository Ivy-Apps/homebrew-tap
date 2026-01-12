class Deslop < Formula
  desc "A CLI tool for the Deslop project"
  homepage "https://github.com/ivy-apps/deslop"
  version "0.2.0"
  license "BSD-3-Clause"

  # Only supporting Apple Silicon
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ivy-apps/deslop/releases/download/v0.2.0/deslop-aarch64-apple-darwin.tar.gz"
    sha256 "7171bbc9fd64b2ece4ced5c2b66e80b97d314cdf20c845fc22ff278c4613111c"
  end

  def install
    bin.install "deslop"
  end

  test do
    system "#{bin}/deslop", "--help"
  end
end
