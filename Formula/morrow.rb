class Morrow < Formula
  desc "WAL-backed message broker with durable consumers"
  homepage "https://github.com/morrow-project/morrow"
  license "MIT"

  version "0.1.3"
  url "https://github.com/morrow-project/morrow/releases/download/#{version}/morrow-#{version}-macos-arm64.tar.gz"
  sha256 "d39e2f9ff3e960528f0194d862465314423654c77d4c4d084e8fee32d12cf1b7"

  def install
    bin.install "morrow-server"
    bin.install "morrow-cli"
    bin.install "morrow-connector"
  end

  test do
    system bin / "morrow-cli", "--help"
  end
end
