class Repolens < Formula
  desc "TUI dashboard for your GitHub repositories"
  homepage "https://github.com/doug-skinner/repolens"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-arm64"
      sha256 "05cdde904b74830c4cd4f0d9cca562e4e78022f7e5a8401ea029c115d89cd698"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-x64"
      sha256 "494c902330dd8af16c63436095cccde3803766a2159b7195094c35414a0d9d7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-arm64"
      sha256 "26e240f1d7c988af1644013045168a8f12e187ed6b07cf4280f672a46ceb192a"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-x64"
      sha256 "95a634775ee9f1f62887d43d96f86f62c36c94a583012824d85742a23b3b19bb"
    end
  end

  def install
    bin.install Dir["repolens-*"].first => "repolens"
  end
end
