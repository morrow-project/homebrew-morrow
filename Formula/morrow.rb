class Morrow < Formula
  desc "WAL-backed message broker with durable consumers"
  homepage "https://github.com/morrow-project/morrow"
  license "MIT"

  version "0.2.1"
  url "https://github.com/morrow-project/morrow/releases/download/#{version}/morrow-#{version}-macos-arm64.tar.gz"
  sha256 "4b3b74a8ebb68f86e561a0ddbc5524710157f0fd5086a86f89578d04646dce87"

  def install
    bin.install "morrow-server"
    bin.install "morrow-cli"
    bin.install "morrow-connector"
  end

  test do
    system bin / "morrow-cli", "--help"
  end
end
