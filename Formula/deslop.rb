class Deslop < Formula
  desc "A CLI tool for the Deslop project"
  homepage "https://github.com/ivy-apps/deslop"
  version "0.2.4"
  license "BSD-3-Clause"

  # Only supporting Apple Silicon
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ivy-apps/deslop/releases/download/v0.2.4/deslop-aarch64-apple-darwin.tar.gz"
    sha256 "79a5f8cbf643b8d6670d07b6622b3d9622cfcb3fc8a8892d691dfd119821bd6c"
  end

  def install
    bin.install "deslop"
  end

  test do
    system "#{bin}/deslop", "--help"
  end
end
