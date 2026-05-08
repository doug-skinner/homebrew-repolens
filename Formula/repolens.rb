class Repolens < Formula
  desc "TUI dashboard for your GitHub repositories"
  homepage "https://github.com/doug-skinner/repolens"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-arm64"
      sha256 "3ddb880d94b67958437603ed09829f1a683e6e263288a418574f7cc4435fc02e"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-x64"
      sha256 "2bc383773c154d291b94e894db878695d1d1af76ee14a8c6b4c2b9c871253c94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-arm64"
      sha256 "bdad5b2d4a72b1912b4a398c304ea1e07b6caf87ef745cbc6720294debd5fe5c"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-x64"
      sha256 "1b2437e74b7a7d2c621f6e653c8c42bd31c4a0a8252ca8819f0a68c0a4f3fed4"
    end
  end

  def install
    bin.install Dir["repolens-*"].first => "repolens"
  end
end
