class Ephemr < Formula
  desc "Publish ephemeral static sites from the command line"
  homepage "https://ephemr.io"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/ephemr/releases/download/v0.1.0/ephemr-darwin-arm64"
      sha256 "6aabb79e8ac01704c1ab45e42a32917a9066de20d3a413e22bfdd8b1cbf0cdf6"
    else
      url "https://github.com/veturu/ephemr/releases/download/v0.1.0/ephemr-darwin-amd64"
      sha256 "8da6548d748e11bd6233f7b7091dacbd657d1b0efe2f7b04ace146e862255adb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/ephemr/releases/download/v0.1.0/ephemr-linux-arm64"
      sha256 "cd958af7ee469b344512b331d881223589a8e35b963b19b02bf40e5b2b8e0117"
    else
      url "https://github.com/veturu/ephemr/releases/download/v0.1.0/ephemr-linux-amd64"
      sha256 "e3f41c462508558f6775d45531dd02df6e8b7536b59650e413d473763e51af5f"
    end
  end

  def install
    bin.install Dir["ephemr-*"].first => "ephemr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ephemr version")
  end
end
