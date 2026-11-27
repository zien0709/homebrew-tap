class Zinc < Formula
  desc "Free, self-hosted long-URL generator on Cloudflare Quick Tunnels"
  homepage "https://github.com/zien0709/zinc"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zien0709/zinc/releases/download/v0.1.2/zinc-macos-arm64"
      sha256 "b569af86baed8e099fd4d73a73c59e861e0030de82ba3599f51efdc3a3ecf190"
    else
      url "https://github.com/zien0709/zinc/releases/download/v0.1.2/zinc-macos-arm64"
      sha256 "b569af86baed8e099fd4d73a73c59e861e0030de82ba3599f51efdc3a3ecf190"
    end
  end

  on_linux do
    url "https://github.com/zien0709/zinc/releases/download/v0.1.2/zinc-linux-x64"
    sha256 "5350c0c991369e49ae9a950c022d0288349eed2636825441ed1be691726a3791"
  end

  def install
    if OS.mac?
      bin.install "zinc-macos-arm64" => "zinc"
    else
      bin.install "zinc-linux-x64" => "zinc"
    end
  end

  test do
    system "#{bin}/zinc", "--version"
  end
end