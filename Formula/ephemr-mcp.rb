class EphemrMcp < Formula
  desc "Ephemr MCP server for Claude Desktop, Cursor, Codex, and similar"
  homepage "https://ephemr.io/mcp"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/ephemr/releases/download/v0.1.0/ephemr-mcp-darwin-arm64"
      sha256 "c2bc1944846aaec4571595f11f097c8769a72ae0c1bfc37175b2594e0e3484ae"
    else
      url "https://github.com/veturu/ephemr/releases/download/v0.1.0/ephemr-mcp-darwin-amd64"
      sha256 "e9548d8cb08c0c113025a7c376de326278a180fac606f6ff611ef61e67504361"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/veturu/ephemr/releases/download/v0.1.0/ephemr-mcp-linux-arm64"
      sha256 "7d88b67f7f5eb3f8d97166fa70902fed4b4fa18e1d3c95b840116f9e858e662d"
    else
      url "https://github.com/veturu/ephemr/releases/download/v0.1.0/ephemr-mcp-linux-amd64"
      sha256 "f2f10653ffeefd6af5e3fafb8dba972b48056c71b458269351e18525263cb864"
    end
  end

  def install
    bin.install Dir["ephemr-mcp-*"].first => "ephemr-mcp"
  end

  test do
    system "true"
  end
end
