class Ephemr < Formula
  desc "Publish ephemeral static sites from the command line"
  homepage "https://ephemr.io"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.2.0/ephemr-darwin-arm64"
      sha256 "c314f32a8aaf5332c594e27fd1474261c3656eee88c0074521cd261ba605aaa2"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.2.0/ephemr-darwin-amd64"
      sha256 "3425da83e067b5d164f97a8bb08e9c51c1919cdeb39f7b147784ecfad7e96e9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.2.0/ephemr-linux-arm64"
      sha256 "e9a649d98dd74b99301e074ecb781f4cdf3987c0be785c61d19bbf1f72772044"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.2.0/ephemr-linux-amd64"
      sha256 "f795a876efe0663167ccb43ab7bcf7fa62a7a3c385977d6b9afa7b17993221f0"
    end
  end

  def install
    bin.install Dir["ephemr-*"].first => "ephemr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ephemr version")
  end
end
