class Deslop < Formula
  desc "A CLI tool for the Deslop project"
  homepage "https://github.com/ivy-apps/deslop"
  version "0.2.1"
  license "BSD-3-Clause"

  # Only supporting Apple Silicon
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ivy-apps/deslop/releases/download/v0.2.1/deslop-aarch64-apple-darwin.tar.gz"
    sha256 "21f2b2d43285288da93b7097c53da5159d9126150ddf47ff8f97af3de5e7301d"
  end

  def install
    bin.install "deslop"
  end

  test do
    system "#{bin}/deslop", "--help"
  end
end
