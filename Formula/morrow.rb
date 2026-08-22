class Morrow < Formula
  desc "WAL-backed message broker with durable consumers"
  homepage "https://github.com/morrow-project/morrow"
  license "MIT"

  head "https://github.com/morrow-project/morrow.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--workspace", "--locked"

    bin.install "target/release/morrow-server"
    bin.install "target/release/morrow-cli"
    bin.install "target/release/morrow-connector"
  end

  test do
    system bin / "morrow-cli", "--help"
  end
end
