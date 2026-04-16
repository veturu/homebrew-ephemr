class EphemrMcp < Formula
  desc "Ephemr MCP server for Claude Desktop, Cursor, Codex, and similar"
  homepage "https://ephemr.io/mcp"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.1/ephemr-mcp-darwin-arm64"
      sha256 "1219adcc50d9aeac3a5ae5574e6f4c4841132322ec4b80aec8f4f79c1d787a08"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.1/ephemr-mcp-darwin-amd64"
      sha256 "7c4f9dcfe15c8e4deba780992b162b0ce9af1374858ea008ff1c8f11383b18a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.1/ephemr-mcp-linux-arm64"
      sha256 "e01ba56b2b3e7d3224b5cfa12ec5f0a4cd13fc11d97ed5ab4a7218897b64e304"
    else
      url "https://github.com/veturu/homebrew-ephemr/releases/download/v0.1.1/ephemr-mcp-linux-amd64"
      sha256 "904703d61f905771fd406c5a83b6123c70634c51536442f005a4cd97d4ad398c"
    end
  end

  def install
    bin.install Dir["ephemr-mcp-*"].first => "ephemr-mcp"
  end

  test do
    system "true"
  end
end
