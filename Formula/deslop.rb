class Deslop < Formula
  desc "A CLI tool for the Deslop project"
  homepage "https://github.com/ivy-apps/deslop"
  version "0.3.2"
  license "BSD-3-Clause"

  # Only supporting Apple Silicon
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ivy-apps/homebrew-tap/releases/download/v0.3.2/deslop-aarch64-apple-darwin.tar.gz"
    sha256 "8411504f49cb3cf9c570316566d4d48b545ff661d9ca184ad76ae0e061164a1d"
  end

  def install
    bin.install "deslop"
  end

  test do
    system "#{bin}/deslop", "--help"
  end
end
