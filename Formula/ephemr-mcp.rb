class EphemrMcp < Formula
  desc "Ephemr MCP server for Claude Desktop, Cursor, Codex, and similar"
  homepage "https://ephemr.io/mcp"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.2.0/ephemr-mcp-darwin-arm64"
      sha256 "bd11e58e683ac1fafe794ef033cec5c6d855d6e1698f233f94e977ccec60d30e"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.2.0/ephemr-mcp-darwin-amd64"
      sha256 "7ace1ae9e01b61295ce0a6f8009a7ae0fee002ffea4679250c2ee8ef250466cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.2.0/ephemr-mcp-linux-arm64"
      sha256 "f104315c78b7b873638bcea5c6cde43fa320d83727c2420b3f39b70bc2d56492"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.2.0/ephemr-mcp-linux-amd64"
      sha256 "96ecf70bfe4448ae5eb2da55b6e7d4f3011f5c30cc7a1ed4dde8fcef483a47a1"
    end
  end

  def install
    bin.install Dir["ephemr-mcp-*"].first => "ephemr-mcp"
  end

  test do
    system "true"
  end
end
