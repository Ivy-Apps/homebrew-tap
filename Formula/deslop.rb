class Deslop < Formula
  desc "A CLI tool for the Deslop project"
  homepage "https://github.com/ivy-apps/deslop"
  version "0.2.2"
  license "BSD-3-Clause"

  # Only supporting Apple Silicon
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ivy-apps/deslop/releases/download/v0.2.2/deslop-aarch64-apple-darwin.tar.gz"
    sha256 "0c540446b978c53aef023ef5a8d6ccd72d344ee8f9c1222ce38d074eed5cccd5"
  end

  def install
    bin.install "deslop"
  end

  test do
    system "#{bin}/deslop", "--help"
  end
end
