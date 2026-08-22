class Morrow < Formula
  desc "WAL-backed message broker with durable consumers"
  homepage "https://github.com/morrow-project/morrow"
  license "MIT"

  version "0.1.2"
  url "https://github.com/morrow-project/morrow/releases/download/#{version}/morrow-#{version}-macos-arm64.tar.gz"
  sha256 "428879a6774b9faac6ef284ee9b1ffcbb0e428640a1dfeb16c519c739f7fa190"

  def install
    bin.install "morrow-server"
    bin.install "morrow-cli"
    bin.install "morrow-connector"
  end

  test do
    system bin / "morrow-cli", "--help"
  end
end
