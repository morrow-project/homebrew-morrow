class Morrow < Formula
  desc "WAL-backed message broker with durable consumers"
  homepage "https://github.com/morrow-project/morrow"
  license "MIT"

  version "0.1.1"
  url "https://github.com/morrow-project/morrow/releases/download/#{version}/morrow-#{version}-macos-arm64.tar.gz"
  sha256 "5d73cb5dbf2bb4d1cf49fe85f6347c32e9893649b34fe8637f9a75521ef015b0"

  def install
    bin.install "morrow-server"
    bin.install "morrow-cli"
    bin.install "morrow-connector"
  end

  test do
    system bin / "morrow-cli", "--help"
  end
end
