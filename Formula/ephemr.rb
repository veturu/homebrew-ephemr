class Ephemr < Formula
  desc "Publish ephemeral static sites from the command line"
  homepage "https://ephemr.io"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.2/ephemr-darwin-arm64"
      sha256 "b210e8c6ee1dc7606fd0f232482d143fe9790d6e3c96159712168d215970cca4"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.2/ephemr-darwin-amd64"
      sha256 "397f168b76d2e4a4d3890e34a609881d7eaa15d6cbbc6ffdf50ceb2338fb0863"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.2/ephemr-linux-arm64"
      sha256 "bebd0c5a82596d625f1ac35a80da2785470b93d8dd177ef502f64713314a8aff"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.2/ephemr-linux-amd64"
      sha256 "6bf2cfc6f355236fc95f5bb9f28f37cafe4677c10ea7459d1c06558f94ff1200"
    end
  end

  def install
    bin.install Dir["ephemr-*"].first => "ephemr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ephemr version")
  end
end
