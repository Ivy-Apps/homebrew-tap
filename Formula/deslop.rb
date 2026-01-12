class Deslop < Formula
  desc "A CLI tool for the Deslop project"
  homepage "https://github.com/ivy-apps/deslop"
  version "0.2.3"
  license "BSD-3-Clause"

  # Only supporting Apple Silicon
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ivy-apps/deslop/releases/download/v0.2.3/deslop-aarch64-apple-darwin.tar.gz"
    sha256 "887cbf39ac30aa33a1bd62f7e4f43d20684cc6bfb9145077a8108dab4dd62eb8"
  end

  def install
    bin.install "deslop"
  end

  test do
    system "#{bin}/deslop", "--help"
  end
end
