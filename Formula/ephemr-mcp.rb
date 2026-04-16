class EphemrMcp < Formula
  desc "Ephemr MCP server for Claude Desktop, Cursor, Codex, and similar"
  homepage "https://ephemr.io/mcp"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.0/ephemr-mcp-darwin-arm64"
      sha256 "786b4ee2860d796b09e234d1be70ce0b1e852558a34d4d57fef51a091102278b"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.0/ephemr-mcp-darwin-amd64"
      sha256 "0bf79639fa1b4e246e4c5713b8b796f25c7d72eb35fa71792f3f86af4983d6bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.0/ephemr-mcp-linux-arm64"
      sha256 "528388b19872951773f88605f5350cf82fa0b5e75e094d2cce5a9f34ba3c11af"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.0/ephemr-mcp-linux-amd64"
      sha256 "3186ad75ef0d773bde40c27b6b1a780a0705e9701a221e2b210677f634a2e38e"
    end
  end

  def install
    bin.install Dir["ephemr-mcp-*"].first => "ephemr-mcp"
  end

  test do
    system "true"
  end
end
