class Morrow < Formula
  desc "WAL-backed message broker with durable consumers"
  homepage "https://github.com/morrow-project/morrow"
  license "MIT"

  version "0.2.0"
  url "https://github.com/morrow-project/morrow/releases/download/#{version}/morrow-#{version}-macos-arm64.tar.gz"
  sha256 "8974e680a88dd6f1d190b1258b1207813d6b2c1f418687a822aae8c06496fd41"

  def install
    bin.install "morrow-server"
    bin.install "morrow-cli"
    bin.install "morrow-connector"
  end

  test do
    system bin / "morrow-cli", "--help"
  end
end
