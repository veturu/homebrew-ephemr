class Ephemr < Formula
  desc "Publish ephemeral static sites from the command line"
  homepage "https://ephemr.io"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.1/ephemr-darwin-arm64"
      sha256 "ffbf58890d49918616d1a7a3222e07d740606dccb239f71d32ac4b942ace78fa"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.1/ephemr-darwin-amd64"
      sha256 "59cb24c1ec04713611c9f6b094b0afb9b5a91a0d2b5a001104c4ac2efce79ec4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.1/ephemr-linux-arm64"
      sha256 "797e4ee8ddb1a2bd73dad96070a0ac1232a0bca7422c85440ab12e271e7ae41e"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.1/ephemr-linux-amd64"
      sha256 "ef49f4f5fd42410c353d083386d9e00594cf67ae42bb10557a2afedb39319d9b"
    end
  end

  def install
    bin.install Dir["ephemr-*"].first => "ephemr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ephemr version")
  end
end
