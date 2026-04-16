class Ephemr < Formula
  desc "Publish ephemeral static sites from the command line"
  homepage "https://ephemr.io"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.0/ephemr-darwin-arm64"
      sha256 "ce284f56888c777a25707e198979e350d37b958c8f8b483495754cfdf63a9bd4"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.0/ephemr-darwin-amd64"
      sha256 "759161970a560b1346392ed0730c659875cde9c7a4e43d878f0dfe1b86217d78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.0/ephemr-linux-arm64"
      sha256 "7424e7dee4e6d8119d4a26e4671f50bdf16748fe249cfdde979db78f05629322"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.0/ephemr-linux-amd64"
      sha256 "eda55e29725a97c7a99e74e92bbfe5bebd5b47b135d1c09394991147ef97fa25"
    end
  end

  def install
    bin.install Dir["ephemr-*"].first => "ephemr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ephemr version")
  end
end
