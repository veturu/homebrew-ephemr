class EphemrMcp < Formula
  desc "Ephemr MCP server for Claude Desktop, Cursor, Codex, and similar"
  homepage "https://ephemr.io/mcp"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.2/ephemr-mcp-darwin-arm64"
      sha256 "64d9ebe93a94b28a8f219144bab861da6b889aff836b76c2adcbb66616ffbe92"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.2/ephemr-mcp-darwin-amd64"
      sha256 "34d29f2b3ade6bbe2fa1ddd8e50d4031e24fd3484edaf0c8185a659ce30be9bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.2/ephemr-mcp-linux-arm64"
      sha256 "bc5e01518bc1a883c8b9dffeb902f83c4008eec90932416f204bbbd4d9c3eb44"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.2/ephemr-mcp-linux-amd64"
      sha256 "dbdbdda0eceb16df503ee5bdf20893cf851ddf282557d98fe4afddeddfc66cd0"
    end
  end

  def install
    bin.install Dir["ephemr-mcp-*"].first => "ephemr-mcp"
  end

  test do
    system "true"
  end
end
